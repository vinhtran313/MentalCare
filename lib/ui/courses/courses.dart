import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CourseDto {
  String? id;
  String? name;
  String? description;
  String? author;
  double? price;
  bool isHot;
  String image;
  CourseDto(this.id, this.author, this.description, this.name, this.price,
      this.isHot, this.image);
}

class CategoryCourseDto {
  String? id;
  String? name;
  List<CourseDto>? courses;

  CategoryCourseDto(this.id, this.name, this.courses);
}

class CoursesScreen extends StatefulWidget {
  @override
  _CoursesScreenState createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  final List<CategoryCourseDto> fakeData = [
    CategoryCourseDto("1", 'Popular courses', [
      CourseDto(
          '11',
          'Do Xuan Tien',
          'This is some description',
          'Course for mental heal level 1',
          500,
          true,
          'https://www.royaleinstitution.com/images/mental_health_courses_india.png'),
      CourseDto(
          '12',
          'Do Xuan Tien',
          'This is some description',
          'Course for mental heal level 2',
          500,
          false,
          'https://www.royaleinstitution.com/images/mental_health_courses_india.png'),
      CourseDto(
          '13',
          'Do Xuan Tien',
          'This is some description',
          'Course for mental heal level 3',
          500,
          false,
          'https://www.royaleinstitution.com/images/mental_health_courses_india.png')
    ]),
    CategoryCourseDto("2", 'New courses', [
      CourseDto(
          '21',
          'Tran Hoang Vinh',
          'This is some description',
          'Exams for mental coaching level 1',
          1500,
          false,
          'https://www.royaleinstitution.com/images/mental_health_courses_india.png'),
      CourseDto(
          '22',
          'Tran Hoang Vinh',
          'This is some description',
          'Exams for mental coaching level 2',
          1500,
          true,
          'https://www.royaleinstitution.com/images/mental_health_courses_india.png'),
      CourseDto(
          '23',
          'Tran Hoang Vinh',
          'This is some description',
          'Exams for mental coaching level 3',
          1500,
          false,
          'https://www.royaleinstitution.com/images/mental_health_courses_india.png')
    ])
  ];
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
      backgroundColor: Color(0xFFF3F6FD),
      title: Text(AppLocalizations.of(context).translate('home_tv_posts')),
      actions: _buildActions(context),
    );
  }

  List<Widget> _buildActions(BuildContext context) {
    return <Widget>[Text('_buildActions')];
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
      itemCount: this.fakeData.length,
      separatorBuilder: (context, position) {
        return Divider(
          color: Colors.transparent,
        );
      },
      itemBuilder: (context, position) {
        return _buildListItem(position);
      },
    );
  }

  // Widget _buildListItem(int position) {
  //   return ListTile(
  //     dense: true,
  //     leading: Icon(Icons.cloud_circle),
  //     title: Text(
  //       '${this.fakeData[position].name}',
  //       maxLines: 1,
  //       overflow: TextOverflow.ellipsis,
  //       softWrap: false,
  //       style: Theme.of(context).textTheme.subtitle1,
  //     ),
  //     subtitle: Text(
  //       '${this.fakeData[position].name}',
  //       maxLines: 1,
  //       overflow: TextOverflow.ellipsis,
  //       softWrap: false,
  //     ),
  //   );
  // }
  Widget _buildListItem(int position) {
    return Container(
      child: Column(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8))),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  border: Border(
                      left: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                          width: 8))),
              child: Align(
                child: Container(
                  child: Text(
                    '${this.fakeData[position].name}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  margin: EdgeInsets.only(left: 8),
                ),
                alignment: Alignment.centerLeft,
              ),
            ),
          ),
          Container(
            width: 500,
            height: 300,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, coursePosition) {
                  return _buildListCourseItem(position, coursePosition);
                },
                separatorBuilder: (context, position) {
                  return Divider(
                    color: Colors.transparent,
                  );
                },
                itemCount: this.fakeData[position].courses?.length ?? 0),
          )
        ],
      ),
    );
  }

  Widget _buildListCourseItem(int cateCoursePosition, int coursePosition) {
    CourseDto? data =
        this.fakeData[cateCoursePosition].courses?[coursePosition];
    return Container(
      width: 200,
      height: 300,
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Stack(children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          child: Column(
            children: [
              // Positioned(child: Text('HOT'), top: 0,left: 0,),
              Expanded(
                  child: Image.network(
                data?.image ?? '',
                fit: BoxFit.fill,
              )),
              Expanded(
                  child: Column(
                children: [
                  Expanded(
                      child: Text(
                    '${this.fakeData[cateCoursePosition].courses?[coursePosition].name}',
                    maxLines: 2,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  Expanded(
                      child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '${this.fakeData[cateCoursePosition].courses?[coursePosition].author}',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Color(0xFF686868), fontSize: 15),
                    ),
                  )),
                  Expanded(
                      child: Align(
                    alignment: Alignment.centerLeft,
                    child: RatingBar(
                        itemSize: 15,
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
                  )),
                  Expanded(
                      child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '${this.fakeData[cateCoursePosition].courses?[coursePosition].price}\$',
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ))
                ],
              ))
            ],
          ),
        ),
        Positioned(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: Text('HOT'),
          ),
          left: 0,
          top: 0,
        ),
      ]),
    );
  }
  // General Methods:-----------------------------------------------------------
  // _showErrorMessage(String message) {
  //   Future.delayed(Duration(milliseconds: 0), () {
  //     if (message.isNotEmpty) {
  //       FlushbarHelper.createError(
  //         message: message,
  //         title: AppLocalizations.of(context).translate('home_tv_error'),
  //         duration: Duration(seconds: 3),
  //       )..show(context);
  //     }
  //   });

  //   return SizedBox.shrink();
  // }

  // _showDialog<T>({required BuildContext context, required Widget child}) {
  //   showDialog<T>(
  //     context: context,
  //     builder: (BuildContext context) => child,
  //   ).then<void>((T? value) {
  //     // The value passed to Navigator.pop() or null.
  //   });
  // }
}
