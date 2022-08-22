import 'package:boilerplate/data/repository.dart';
import 'package:boilerplate/di/components/service_locator.dart';
import 'package:boilerplate/stores/user/user_store.dart';
import 'package:boilerplate/utils/routes/routes.dart';
import 'package:boilerplate/widgets/gradient_button_widget.dart';
import 'package:boilerplate/widgets/youtube_player_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:material_dialog/material_dialog.dart';

import 'courses.dart';

class CourseDetailScreen extends StatefulWidget {
  @override
  _CourseDetailScreenState createState() => _CourseDetailScreenState();
}

class _CourseDetailScreenState extends State<CourseDetailScreen> {
  CourseDto? _dataCourse;
  UserStore _userStore = UserStore(getIt<Repository>());
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as CourseDto?;
    this.setState(() {
      _dataCourse = data;
    });
    print(data?.description);
    return Scaffold(
      backgroundColor: Color(0xFFF3F6FD),
      appBar: _buildAppBar(),
      body: SingleChildScrollView(child: _buildBody()),
    );
  }

  // app bar methods:-----------------------------------------------------------
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Color(0xFFF3F6FD),
      title: Text('Course Detail'),
      // actions: _buildActions(context),
    );
  }

  // body methods:--------------------------------------------------------------
  Widget _buildBody() {
    return Stack(
      children: <Widget>[
        _buildMainContent(),
      ],
    );
  }

  Widget _buildMainContent() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
      child: Column(
        children: [
          YoutubePlayerWidget.getPlayerWidget(_dataCourse?.videoLink ?? ''),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Column(children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${_dataCourse?.name}',
                    maxLines: 2,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '${_dataCourse?.description}',
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '4.5',
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(
                      width: 4,
                      height: 1,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: RatingBar(
                          itemSize: 16,
                          ignoreGestures: true,
                          initialRating: 4,
                          direction: Axis.horizontal,
                          itemCount: 5,
                          ratingWidget: RatingWidget(
                              full: const Icon(Icons.star,
                                  color: Color(0xFFB201DE)),
                              half: const Icon(
                                Icons.star_half,
                                color: Color(0xFFB201DE),
                              ),
                              empty: const Icon(
                                Icons.star_outline,
                                color: Color(0xFFB201DE),
                              )),
                          onRatingUpdate: (value) {}),
                    ),
                    SizedBox(
                      width: 4,
                      height: 1,
                    ),
                    Text(
                      '${_dataCourse?.subscript}',
                      style: TextStyle(fontSize: 14),
                    )
                  ],
                ),
                margin: EdgeInsets.symmetric(vertical: 8),
              ),
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${_dataCourse?.author}',
                    textAlign: TextAlign.left,
                  ),
                ),
                margin: EdgeInsets.only(bottom: 8),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '${_dataCourse?.price}\$',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              GradientButtonWidget(
                buttonText: 'Buy now',
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                buttonColor: Theme.of(context).colorScheme.primary,
                textColor: Colors.white,
                onPressed: () async {
                  _userStore.addCourse(_dataCourse);
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => MaterialDialog(
                            borderRadius: 5.0,
                            enableFullWidth: true,
                            title: Text(
                              "Thông báo",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                            headerColor: Theme.of(context).colorScheme.primary,
                            backgroundColor:
                                Theme.of(context).scaffoldBackgroundColor,
                            closeButtonColor: Colors.white,
                            enableCloseButton: false,
                            enableBackButton: false,
                            content: Text("Thêm khóa học thành công"),
                            children: [
                              ListTile(
                                dense: true,
                                contentPadding: EdgeInsets.all(0.0),
                                title: Text(
                                  "Ok",
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                                onTap: () {
                                  Navigator.of(context).pushNamedAndRemoveUntil(
                                      Routes.home,
                                      (Route<dynamic> route) => false);
                                  // change user language based on selected locale
                                },
                              )
                            ],
                          ));
                },
              )
            ]),
          )
        ],
      ),
    );
  }
}
