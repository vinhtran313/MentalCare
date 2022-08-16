import 'dart:developer';

import 'package:boilerplate/utils/routes/routes.dart';
import 'package:flutter/material.dart';

import 'courses.dart';

class CourseDetailScreen extends StatefulWidget {
  @override
  _CourseDetailScreenState createState() => _CourseDetailScreenState();
}

class _CourseDetailScreenState extends State<CourseDetailScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as CourseDto?;
    print(data?.description);
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
      child: Text('Body'),
    );
  }
}
