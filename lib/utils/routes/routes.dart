import 'package:boilerplate/ui/courses/course_detail.dart';
import 'package:boilerplate/ui/courses/courses.dart';
import 'package:boilerplate/ui/courses/my_course.dart';
import 'package:boilerplate/ui/courses/study_course.dart';
import 'package:boilerplate/ui/home/home.dart';
import 'package:boilerplate/ui/login/login.dart';
import 'package:boilerplate/ui/login/signup.dart';
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
  static const String my_courses = '/my_courses';
  static const String study_course = '/study_course';
  static const String signup = '/signup';

  static final routes = <String, WidgetBuilder>{
    splash: (BuildContext context) => SplashScreen(),
    login: (BuildContext context) => LoginScreen(),
    home: (BuildContext context) => HomeScreen(),
    courses: (BuildContext context) => CoursesScreen(),
    detail_course: (BuildContext context) => CourseDetailScreen(),
    my_courses: (BuildContext context) => MyCoursesScreen(),
    study_course: (BuildContext context) => StudyCourseScreen(),
    signup: (BuildContext context) => SignupScreen(),
  };
}
