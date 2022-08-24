import 'package:boilerplate/ui/login/login.dart';
import 'package:boilerplate/utils/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../models/setting/setting.dart';
import '../calendar/calendar.dart';
import 'package:boilerplate/stores/theme/theme_store.dart';
import 'package:provider/provider.dart';

class SettingPages extends StatefulWidget {
  const SettingPages({Key? key}) : super(key: key);

  @override
  _SettingPagesState createState() => _SettingPagesState();
}

class _SettingPagesState extends State<SettingPages> {
  late ThemeStore _themeStore;
  bool isSwitched = false;
  List<SettingModal> settings = [
    SettingModal(name: 'Tài khoản', icon: 'assets/icons/user_icon.svg'),
    SettingModal(name: 'Thông báo', icon: 'assets/icons/bell.svg'),
    SettingModal(name: 'Cài đặt', icon: 'assets/icons/settings.svg'),
    SettingModal(name: 'Khóa học đã đăng ký', icon: 'assets/icons/bell.svg'),
    // SettingModal(
    //     name: 'Trung tam tro giup', icon: 'assets/icons/question_mark.svg'),
  ];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _themeStore = Provider.of<ThemeStore>(context);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            SafeArea(
              child: Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/avatar.png',
                            ),
                          )),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 4,
                                color:
                                    Theme.of(context).scaffoldBackgroundColor)),
                        child: Icon(Icons.edit, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
            // SizedBox(height: 10),
            ListView.builder(
              itemCount: settings.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: FlatButton(
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Color(0xFFF5F6F9),
                    onPressed: () {
                      if (settings[index].name == 'Khóa học đã đăng ký') {
                        Navigator.of(context).pushNamed(Routes.my_courses);
                      }
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          settings[index].icon,
                          width: 22,
                          color: Colors.purple,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Text(
                            settings[index].name,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.purple,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: FlatButton(
                padding:
                    EdgeInsets.only(top: 20, bottom: 20, right: 20, left: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Color(0xFFF5F6F9),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Calendar();
                      },
                    ),
                  );
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.calendar_month,
                      color: Colors.purple,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        'Lịch tư vấn cá nhân',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.purple,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: FlatButton(
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Color(0xFFF5F6F9),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.dark_mode,
                      color: Colors.purple,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        'Chế độ ban đêm',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                          print(isSwitched);
                        });
                        // _themeStore.changeBrightnessToDark(!_themeStore.darkMode);
                      },
                      activeTrackColor: Colors.purple[100],
                      activeColor: Colors.purple,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: FlatButton(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.grey[300],
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => LoginScreen()),
                    ModalRoute.withName('/login'),
                  );
                },
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/log_out.svg',
                      width: 22,
                      color: Colors.purple,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        'Đăng xuất',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
