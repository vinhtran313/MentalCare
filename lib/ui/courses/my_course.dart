import 'package:boilerplate/data/repository.dart';
import 'package:boilerplate/di/components/service_locator.dart';
import 'package:boilerplate/stores/user/user_store.dart';
import 'package:boilerplate/ui/courses/courses.dart';
import 'package:boilerplate/utils/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MyCoursesScreen extends StatefulWidget {
  @override
  _MyCoursesScreenState createState() => _MyCoursesScreenState();
}

class _MyCoursesScreenState extends State<MyCoursesScreen> {
  UserStore _userStore = UserStore(getIt<Repository>());
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F6FD),
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  // app bar methods:-----------------------------------------------------------
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Color(0xFFF3F6FD),
      title: Text('My courses'),
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
      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: _buildListView(),
    );
  }

  Widget _buildListView() {
    return ListView.separated(
      itemCount: this._userStore.myCourses.length,
      separatorBuilder: (context, position) {
        return Divider(
          color: Colors.transparent,
        );
      },
      itemBuilder: (context, position) {
        return _buildListCourseItem(position);
      },
    );
  }

  Widget _buildListCourseItem(int pos) {
    CourseDto? data = this._userStore.myCourses[pos];
    List<Widget> listView = [
      Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Row(
          children: [
            // Positioned(child: Text('HOT'), top: 0,left: 0,),
            Expanded(
                child: Image.network(
              data.image,
              fit: BoxFit.contain,
            )),
            Expanded(
                child: Column(
              children: [
                Text(
                  '${data.name}',
                  maxLines: 2,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${data.author}',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Color(0xFF686868), fontSize: 15),
                  ),
                ),
                SizedBox(
                  width: 1,
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
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
                        '${data.subscript}',
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 1,
                  height: 10,
                ),
              ],
            ))
          ],
        ),
      ),
    ];
    return GestureDetector(
      onTap: (() {
        data.currentLessonIdx = 0;
        Navigator.of(context).pushNamed(Routes.study_course, arguments: data);
      }),
      child: Container(
        width: 200,
        height: 130,
        margin: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Stack(children: listView),
      ),
    );
  }
}
