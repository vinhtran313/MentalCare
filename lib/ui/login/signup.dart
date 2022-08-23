import 'package:another_flushbar/flushbar_helper.dart';
import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/data/sharedpref/constants/preferences.dart';
import 'package:boilerplate/utils/routes/routes.dart';
import 'package:boilerplate/stores/form/form_store.dart';
import 'package:boilerplate/stores/theme/theme_store.dart';
import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:boilerplate/widgets/empty_app_bar_widget.dart';
import 'package:boilerplate/widgets/gradient_button_widget.dart';
import 'package:boilerplate/widgets/progress_indicator_widget.dart';
import 'package:boilerplate/widgets/custom_textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  //text controllers:-----------------------------------------------------------
  TextEditingController _userEmailController = TextEditingController();
  TextEditingController _fullnameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  //stores:---------------------------------------------------------------------
  late ThemeStore _themeStore;

  //focus node:-----------------------------------------------------------------
  late FocusNode _passwordFocusNode;
  late FocusNode _confirmPasswordFocusNode;
  late FocusNode _fullnameFocusNode;
  late FocusNode _userEmailFocusNode;

  //stores:---------------------------------------------------------------------
  final _store = FormStore();

  @override
  void initState() {
    super.initState();
    _passwordFocusNode = FocusNode();
    _userEmailFocusNode = FocusNode();
    _confirmPasswordFocusNode = FocusNode();
    _fullnameFocusNode = FocusNode();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _themeStore = Provider.of<ThemeStore>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: false,
      appBar: EmptyAppBar(),
      body: _buildBody(),
    );
  }

  // body methods:--------------------------------------------------------------
  Widget _buildBody() {
    return Material(
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(
              'assets/images/img_decor.svg',
              fit: BoxFit.fill,
            ),
          ),
          MediaQuery.of(context).orientation == Orientation.landscape
              ? Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: _buildLeftSide(),
                    ),
                    Expanded(
                      flex: 1,
                      child: _buildRightSide(),
                    ),
                  ],
                )
              : Center(child: _buildRightSide()),
          Observer(
            builder: (context) {
              return _store.success
                  ? navigate(context)
                  : _showErrorMessage(_store.errorStore.errorMessage);
            },
          ),
          Observer(
            builder: (context) {
              return Visibility(
                visible: _store.loading,
                child: CustomProgressIndicatorWidget(),
              );
            },
          )
        ],
      ),
    );
  }

  Widget _buildLeftSide() {
    return SizedBox.expand(
      child: Image.asset(
        Assets.carBackground,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildRightSide() {
    return SingleChildScrollView(
      child: Container(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Spacer(),
                _buildTitle(),
                _buildUserIdField(),
                _buildFullnameField(),
                _buildPasswordField(),
                _buildConfirmPasswordField(),
                // _buildForgotPasswordButton(),
                SizedBox.fromSize(
                  size: Size(1, 30),
                ),
                _buildSignInButton(),
                SizedBox.fromSize(
                  size: Size(1, 30),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      Spacer(),
                      Text('Đã có tài khoản? '),
                      Padding(
                        padding: EdgeInsets.all(0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              padding: EdgeInsets.all(0),
                              shadowColor: Colors.transparent),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                  Routes.login,
                                  (Route<dynamic> route) => false);
                            },
                            child: Text(
                              "Đăng nhập",
                              style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary),
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                SizedBox.fromSize(
                  size: Size(1, 20),
                )
              ],
            ),
          )),
    );
  }

  Widget _buildTitle() {
    return Column(
      children: [
        Align(
          child: Text(
            'Đăng ký',
            textAlign: TextAlign.right,
            style: TextStyle(
                color: Color(0xFF000000),
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          alignment: Alignment.centerLeft,
        ),
      ],
    );
  }

  Widget _buildUserIdField() {
    return Observer(
      builder: (context) {
        return CustomTextFieldWidget(
          hint: 'Nhập email',
          inputType: TextInputType.emailAddress,
          icon: Icons.mail,
          iconColor: _themeStore.darkMode ? Colors.white70 : Colors.black54,
          textController: _userEmailController,
          inputAction: TextInputAction.next,
          autoFocus: false,
          onChanged: (value) {
            _store.setUserId(_userEmailController.text);
          },
          onFieldSubmitted: (value) {
            FocusScope.of(context).requestFocus(_fullnameFocusNode);
          },
          errorText: null,
          padding: EdgeInsets.only(left: 10, bottom: 10, right: 10, top: 10),
          margin: EdgeInsets.only(left: 0, bottom: 20, right: 0, top: 20),
          label: 'EMAIL',
          focusNode: _userEmailFocusNode,
        );
      },
    );
  }

  Widget _buildFullnameField() {
    return Observer(
      builder: (context) {
        return CustomTextFieldWidget(
          hint: 'Nhập họ tên',
          inputType: TextInputType.emailAddress,
          icon: Icons.person,
          iconColor: _themeStore.darkMode ? Colors.white70 : Colors.black54,
          textController: _fullnameController,
          inputAction: TextInputAction.next,
          autoFocus: false,
          onFieldSubmitted: (value) {
            FocusScope.of(context).requestFocus(_passwordFocusNode);
          },
          errorText: null,
          padding: EdgeInsets.only(left: 10, bottom: 10, right: 10, top: 10),
          margin: EdgeInsets.only(left: 0, bottom: 20, right: 0, top: 0),
          label: 'Họ tên',
          focusNode: _fullnameFocusNode,
        );
      },
    );
  }

  Widget _buildPasswordField() {
    return Observer(
      builder: (context) {
        return CustomTextFieldWidget(
          hint: 'Nhập mật khẩu',
          isObscure: true,
          padding: EdgeInsets.only(left: 10, bottom: 10, right: 10, top: 10),
          icon: Icons.lock,
          iconColor: _themeStore.darkMode ? Colors.white70 : Colors.black54,
          textController: _passwordController,
          focusNode: _passwordFocusNode,
          margin: EdgeInsets.only(left: 0, bottom: 20, right: 0, top: 0),
          onFieldSubmitted: (value) {
            FocusScope.of(context).requestFocus(_confirmPasswordFocusNode);
          },
          errorText: null,
          onChanged: (value) {
            _store.setPassword(_passwordController.text);
          },
          label: 'Mật khẩu',
        );
      },
    );
  }

  Widget _buildConfirmPasswordField() {
    return Observer(
      builder: (context) {
        return CustomTextFieldWidget(
          hint: 'Nhập lại mật khẩu',
          isObscure: true,
          padding: EdgeInsets.only(left: 10, bottom: 10, right: 10, top: 10),
          icon: Icons.lock,
          iconColor: _themeStore.darkMode ? Colors.white70 : Colors.black54,
          textController: _confirmPasswordController,
          focusNode: _confirmPasswordFocusNode,
          errorText: null,
          onChanged: (value) {
            _store.setPassword(_passwordController.text);
          },
          label: 'Xác nhận mật khẩu',
        );
      },
    );
  }

  Widget _buildForgotPasswordButton() {
    return Align(
      alignment: FractionalOffset.centerRight,
      child: FlatButton(
        padding: EdgeInsets.all(0.0),
        child: Text(
          AppLocalizations.of(context).translate('login_btn_forgot_password'),
          style: Theme.of(context)
              .textTheme
              .caption
              ?.copyWith(color: Theme.of(context).colorScheme.primary),
        ),
        onPressed: () {},
      ),
    );
  }

  Widget _buildSignInButton() {
    return GradientButtonWidget(
      padding: EdgeInsets.symmetric(vertical: 8),
      buttonText: 'Đăng ký',
      buttonColor: Theme.of(context).colorScheme.primary,
      textColor: Colors.white,
      onPressed: () async {
        Future.delayed(Duration(milliseconds: 0), () {
          Navigator.of(context).pushNamedAndRemoveUntil(
              Routes.login, (Route<dynamic> route) => false);
        });
      },
    );
  }

  Widget navigate(BuildContext context) {
    SharedPreferences.getInstance().then((prefs) {
      prefs.setBool(Preferences.is_logged_in, true);
    });

    Future.delayed(Duration(milliseconds: 0), () {
      Navigator.of(context).pushNamedAndRemoveUntil(
          Routes.home, (Route<dynamic> route) => false);
    });

    return Container();
  }

  // General Methods:-----------------------------------------------------------
  _showErrorMessage(String message) {
    if (message.isNotEmpty) {
      Future.delayed(Duration(milliseconds: 0), () {
        if (message.isNotEmpty) {
          FlushbarHelper.createError(
            message: message,
            title: AppLocalizations.of(context).translate('home_tv_error'),
            duration: Duration(seconds: 3),
          )..show(context);
        }
      });
    }

    return SizedBox.shrink();
  }

  // dispose:-------------------------------------------------------------------
  @override
  void dispose() {
    // Clean up the controller when the Widget is removed from the Widget tree
    _userEmailController.dispose();
    _passwordController.dispose();
    _passwordFocusNode.dispose();
    _userEmailFocusNode.dispose();
    super.dispose();
  }
}
