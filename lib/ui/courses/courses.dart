import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:flutter/material.dart';

class CourseDto {
  String? id;
  String? name;
  String? description;
  String? author;
  double? price;
  CourseDto(this.id, this.author, this.description, this.name, this.price);
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
      CourseDto('11', 'Do Xuan Tien', 'This is some description',
          'Course for mental heal level 1', 500),
      CourseDto('12', 'Do Xuan Tien', 'This is some description',
          'Course for mental heal level 2', 500),
      CourseDto('13', 'Do Xuan Tien', 'This is some description',
          'Course for mental heal level 3', 500)
    ]),
    CategoryCourseDto("2", 'New courses', [
      CourseDto('21', 'Tran Hoang Vinh', 'This is some description',
          'Exams for mental coaching level 1', 1500),
      CourseDto('22', 'Tran Hoang Vinh', 'This is some description',
          'Exams for mental coaching level 2', 1500),
      CourseDto('23', 'Tran Hoang Vinh', 'This is some description',
          'Exams for mental coaching level 3', 1500)
    ])
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  // app bar methods:-----------------------------------------------------------
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
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
    return _buildListView();
  }

  Widget _buildListView() {
    return ListView.separated(
      itemCount: this.fakeData.length,
      separatorBuilder: (context, position) {
        return Divider();
      },
      itemBuilder: (context, position) {
        return _buildListItem(position);
      },
    );
  }

  Widget _buildListItem(int position) {
    return ListTile(
      dense: true,
      leading: Icon(Icons.cloud_circle),
      title: Text(
        '${this.fakeData[position].name}',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        softWrap: false,
        style: Theme.of(context).textTheme.subtitle1,
      ),
      subtitle: Text(
        '${this.fakeData[position].name}',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        softWrap: false,
      ),
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
