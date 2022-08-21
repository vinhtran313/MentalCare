import 'package:boilerplate/utils/routes/routes.dart';
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
  String subscript;
  String videoLink;
  CourseDto(this.id, this.author, this.description, this.name, this.price,
      this.isHot, this.image, this.subscript, this.videoLink);
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
          'Flutter - a framework developed by Google - allows you to learn one language (Dart) and build beautiful native mobile apps in no time. \nFlutter is a SDK providing the tooling to compile Dart code into native code and it also gives you a rich set of pre-built and pre-styled UI elements (so called widgets) which you can use to compose your user interfaces. This course will teach Flutter & Dart from scratch, NO prior knowledge of either of the two is required! And you certainly don\'t need any Android or iOS development experience since the whole idea behind Flutter is to only learn one language. \nUse Google\'s Material Design to build beautiful, yet fully customizable, apps in no time with almost zero effort. You can use the rich widget suite Flutter provides to add common UI elements like buttons, switches, forms, toolbars, lists and more - or you simply build your own widgets - Flutter makes that a breeze, too.',
          'Course for mental heal level 1',
          500,
          true,
          'https://www.royaleinstitution.com/images/mental_health_courses_india.png',
          '(98)',
          'oxx564hMBUI'),
      CourseDto(
          '12',
          'Do Xuan Tien',
          'Flutter - a framework developed by Google - allows you to learn one language (Dart) and build beautiful native mobile apps in no time. \nFlutter is a SDK providing the tooling to compile Dart code into native code and it also gives you a rich set of pre-built and pre-styled UI elements (so called widgets) which you can use to compose your user interfaces. This course will teach Flutter & Dart from scratch, NO prior knowledge of either of the two is required! And you certainly don\'t need any Android or iOS development experience since the whole idea behind Flutter is to only learn one language. \nUse Google\'s Material Design to build beautiful, yet fully customizable, apps in no time with almost zero effort. You can use the rich widget suite Flutter provides to add common UI elements like buttons, switches, forms, toolbars, lists and more - or you simply build your own widgets - Flutter makes that a breeze, too.',
          'Course for mental heal level 2',
          500,
          false,
          'https://www.royaleinstitution.com/images/mental_health_courses_india.png',
          '(5)',
          'oxx564hMBUI'),
      CourseDto(
          '13',
          'Do Xuan Tien',
          'Flutter - a framework developed by Google - allows you to learn one language (Dart) and build beautiful native mobile apps in no time. \nFlutter is a SDK providing the tooling to compile Dart code into native code and it also gives you a rich set of pre-built and pre-styled UI elements (so called widgets) which you can use to compose your user interfaces. This course will teach Flutter & Dart from scratch, NO prior knowledge of either of the two is required! And you certainly don\'t need any Android or iOS development experience since the whole idea behind Flutter is to only learn one language. \nUse Google\'s Material Design to build beautiful, yet fully customizable, apps in no time with almost zero effort. You can use the rich widget suite Flutter provides to add common UI elements like buttons, switches, forms, toolbars, lists and more - or you simply build your own widgets - Flutter makes that a breeze, too.',
          'Course for mental heal level 3',
          500,
          false,
          'https://www.royaleinstitution.com/images/mental_health_courses_india.png',
          '(56)',
          'oxx564hMBUI')
    ]),
    CategoryCourseDto("2", 'New courses', [
      CourseDto(
          '21',
          'Tran Hoang Vinh',
          'Flutter - a framework developed by Google - allows you to learn one language (Dart) and build beautiful native mobile apps in no time. \nFlutter is a SDK providing the tooling to compile Dart code into native code and it also gives you a rich set of pre-built and pre-styled UI elements (so called widgets) which you can use to compose your user interfaces. This course will teach Flutter & Dart from scratch, NO prior knowledge of either of the two is required! And you certainly don\'t need any Android or iOS development experience since the whole idea behind Flutter is to only learn one language. \nUse Google\'s Material Design to build beautiful, yet fully customizable, apps in no time with almost zero effort. You can use the rich widget suite Flutter provides to add common UI elements like buttons, switches, forms, toolbars, lists and more - or you simply build your own widgets - Flutter makes that a breeze, too.',
          'Exams for mental coaching level 1',
          1500,
          false,
          'https://www.royaleinstitution.com/images/mental_health_courses_india.png',
          '(396)',
          'oxx564hMBUI'),
      CourseDto(
          '22',
          'Tran Hoang Vinh',
          'Flutter - a framework developed by Google - allows you to learn one language (Dart) and build beautiful native mobile apps in no time. \nFlutter is a SDK providing the tooling to compile Dart code into native code and it also gives you a rich set of pre-built and pre-styled UI elements (so called widgets) which you can use to compose your user interfaces. This course will teach Flutter & Dart from scratch, NO prior knowledge of either of the two is required! And you certainly don\'t need any Android or iOS development experience since the whole idea behind Flutter is to only learn one language. \nUse Google\'s Material Design to build beautiful, yet fully customizable, apps in no time with almost zero effort. You can use the rich widget suite Flutter provides to add common UI elements like buttons, switches, forms, toolbars, lists and more - or you simply build your own widgets - Flutter makes that a breeze, too.',
          'Exams for mental coaching level 2',
          1500,
          true,
          'https://www.royaleinstitution.com/images/mental_health_courses_india.png',
          '(221)',
          'oxx564hMBUI'),
      CourseDto(
          '23',
          'Tran Hoang Vinh',
          'Flutter - a framework developed by Google - allows you to learn one language (Dart) and build beautiful native mobile apps in no time. \nFlutter is a SDK providing the tooling to compile Dart code into native code and it also gives you a rich set of pre-built and pre-styled UI elements (so called widgets) which you can use to compose your user interfaces. This course will teach Flutter & Dart from scratch, NO prior knowledge of either of the two is required! And you certainly don\'t need any Android or iOS development experience since the whole idea behind Flutter is to only learn one language. \nUse Google\'s Material Design to build beautiful, yet fully customizable, apps in no time with almost zero effort. You can use the rich widget suite Flutter provides to add common UI elements like buttons, switches, forms, toolbars, lists and more - or you simply build your own widgets - Flutter makes that a breeze, too.',
          'Exams for mental coaching level 3',
          1500,
          false,
          'https://www.royaleinstitution.com/images/mental_health_courses_india.png',
          '(83)',
          'oxx564hMBUI')
    ]),
    CategoryCourseDto("3", 'Hot course', [
      CourseDto(
          '31',
          'Trinh Van Quyet',
          'Flutter - a framework developed by Google - allows you to learn one language (Dart) and build beautiful native mobile apps in no time. \nFlutter is a SDK providing the tooling to compile Dart code into native code and it also gives you a rich set of pre-built and pre-styled UI elements (so called widgets) which you can use to compose your user interfaces. This course will teach Flutter & Dart from scratch, NO prior knowledge of either of the two is required! And you certainly don\'t need any Android or iOS development experience since the whole idea behind Flutter is to only learn one language. \nUse Google\'s Material Design to build beautiful, yet fully customizable, apps in no time with almost zero effort. You can use the rich widget suite Flutter provides to add common UI elements like buttons, switches, forms, toolbars, lists and more - or you simply build your own widgets - Flutter makes that a breeze, too.',
          'Metal care for Stock trader sesson 1',
          1299,
          false,
          'https://www.royaleinstitution.com/images/mental_health_courses_india.png',
          '(5632)',
          'oxx564hMBUI'),
      CourseDto(
          '32',
          'Trinh Van Quyet',
          'Flutter - a framework developed by Google - allows you to learn one language (Dart) and build beautiful native mobile apps in no time. \nFlutter is a SDK providing the tooling to compile Dart code into native code and it also gives you a rich set of pre-built and pre-styled UI elements (so called widgets) which you can use to compose your user interfaces. This course will teach Flutter & Dart from scratch, NO prior knowledge of either of the two is required! And you certainly don\'t need any Android or iOS development experience since the whole idea behind Flutter is to only learn one language. \nUse Google\'s Material Design to build beautiful, yet fully customizable, apps in no time with almost zero effort. You can use the rich widget suite Flutter provides to add common UI elements like buttons, switches, forms, toolbars, lists and more - or you simply build your own widgets - Flutter makes that a breeze, too.',
          'Metal care for Stock trader sesson 2',
          5999,
          false,
          'https://www.royaleinstitution.com/images/mental_health_courses_india.png',
          '(31)',
          'oxx564hMBUI'),
      CourseDto(
          '33',
          'Trinh Van Quyet',
          'Flutter - a framework developed by Google - allows you to learn one language (Dart) and build beautiful native mobile apps in no time. \nFlutter is a SDK providing the tooling to compile Dart code into native code and it also gives you a rich set of pre-built and pre-styled UI elements (so called widgets) which you can use to compose your user interfaces. This course will teach Flutter & Dart from scratch, NO prior knowledge of either of the two is required! And you certainly don\'t need any Android or iOS development experience since the whole idea behind Flutter is to only learn one language. \nUse Google\'s Material Design to build beautiful, yet fully customizable, apps in no time with almost zero effort. You can use the rich widget suite Flutter provides to add common UI elements like buttons, switches, forms, toolbars, lists and more - or you simply build your own widgets - Flutter makes that a breeze, too.',
          'Metal care for Stock trader sesson 3',
          4569,
          false,
          'https://www.royaleinstitution.com/images/mental_health_courses_india.png',
          '(369)',
          'oxx564hMBUI'),
      CourseDto(
          '34',
          'Trinh Van Quyet',
          'Flutter - a framework developed by Google - allows you to learn one language (Dart) and build beautiful native mobile apps in no time. \nFlutter is a SDK providing the tooling to compile Dart code into native code and it also gives you a rich set of pre-built and pre-styled UI elements (so called widgets) which you can use to compose your user interfaces. This course will teach Flutter & Dart from scratch, NO prior knowledge of either of the two is required! And you certainly don\'t need any Android or iOS development experience since the whole idea behind Flutter is to only learn one language. \nUse Google\'s Material Design to build beautiful, yet fully customizable, apps in no time with almost zero effort. You can use the rich widget suite Flutter provides to add common UI elements like buttons, switches, forms, toolbars, lists and more - or you simply build your own widgets - Flutter makes that a breeze, too.',
          'Metal care for Stock trader sesson 4',
          2389,
          false,
          'https://www.royaleinstitution.com/images/mental_health_courses_india.png',
          '(222)',
          'oxx564hMBUI')
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
      title: Align(
        child: Text(
          'List courses',
          textAlign: TextAlign.center,
        ),
      ),
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
            height: 350,
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
    List<Widget> listView = [
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
                        '${data?.subscript}',
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${this.fakeData[cateCoursePosition].courses?[coursePosition].price}\$',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ))
              ],
            ))
          ],
        ),
      ),
    ];
    if (data?.isHot ?? false) {
      listView.add(Positioned(
        child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              child: Text(
                'HOT',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )),
        left: 0,
        top: 0,
      ));
    }
    return GestureDetector(
      onTap: (() {
        Navigator.of(context).pushNamed(Routes.detail_course, arguments: data);
      }),
      child: Container(
        width: 200,
        height: 350,
        margin: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Stack(children: listView),
      ),
    );
  }
}
