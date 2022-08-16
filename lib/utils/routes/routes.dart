import 'package:boilerplate/ui/courses/course_detail.dart';
import 'package:boilerplate/ui/courses/courses.dart';
import 'package:boilerplate/ui/home/home.dart';
import 'package:boilerplate/ui/login/login.dart';
import 'package:boilerplate/ui/splash/splash.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes._();

  //static variables
  static const String splash = '/splash';
  static const String login = '/login';
  static const String home = '/home';
  static const String courses = '/courses';
  static const String detail_course = '/detail_course';

  static final routes = <String, WidgetBuilder>{
    splash: (BuildContext context) => SplashScreen(),
    login: (BuildContext context) => LoginScreen(),
    home: (BuildContext context) => HomeScreen(),
    courses: (BuildContext context) => CoursesScreen(),
    detail_course: (BuildContext context) => CourseDetailScreen(),
  };
}
