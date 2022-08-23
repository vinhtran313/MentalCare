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

class StudyCourseScreen extends StatefulWidget {
  @override
  _StudyCourseScreenState createState() => _StudyCourseScreenState();
}

class _StudyCourseScreenState extends State<StudyCourseScreen> {
  CourseDto? _dataCourse;
  UserStore _userStore = UserStore(getIt<Repository>());
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as CourseDto;
    this.setState(() {
      _dataCourse = data;
    });
    return Scaffold(
      backgroundColor: Color(0xFFF3F6FD),
      appBar: _buildAppBar(),
      body: SingleChildScrollView(child: _buildBody()),
    );
  }

  // app bar methods:-----------------------------------------------------------
  PreferredSizeWidget _buildAppBar() {
    String title =
        _dataCourse!.lessons[_dataCourse?.currentLessonIdx ?? 0].title;
    return AppBar(
      centerTitle: true,
      backgroundColor: Color(0xFFF3F6FD),
      title: Text(title),
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
    LessonDto lessonDto =
        _dataCourse!.lessons[_dataCourse?.currentLessonIdx ?? 0];
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
                    '${lessonDto.name}',
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
                  '${lessonDto.description}',
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Next lesson',
                    maxLines: 2,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              _buildListView()
            ]),
          )
        ],
      ),
    );
  }

  Widget _buildListView() {
    return Column(
        children: _dataCourse!.lessons
            .asMap()
            .map((idx, item) => MapEntry(idx, _buildListCourseItem(item, idx)))
            .values
            .toList());
  }

  Widget _buildListCourseItem(LessonDto lesson, int pos) {
    List<Widget> listView = [
      Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            // Positioned(child: Text('HOT'), top: 0,left: 0,),
            Expanded(
                child: Image.network(
              lesson.image,
              fit: BoxFit.contain,
            )),
            Expanded(
                child: Column(
              children: [
                Spacer(),
                Text(
                  '${lesson.name}',
                  maxLines: 2,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
              ],
            ))
          ],
        ),
      ),
    ];
    return GestureDetector(
      onTap: (() {
        _dataCourse?.currentLessonIdx = pos;
        Navigator.of(context)
            .pushReplacementNamed(Routes.study_course, arguments: _dataCourse);
      }),
      child: Container(
        height: 130,
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Stack(children: listView),
      ),
    );
  }
}
