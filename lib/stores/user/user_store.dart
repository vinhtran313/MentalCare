import 'package:boilerplate/stores/error/error_store.dart';
import 'package:boilerplate/ui/courses/courses.dart';
import 'package:mobx/mobx.dart';

import '../../data/repository.dart';
import '../form/form_store.dart';

part 'user_store.g.dart';

class UserStore = _UserStore with _$UserStore;

abstract class _UserStore with Store {
  // repository instance
  final Repository _repository;

  // store for handling form errors
  final FormErrorStore formErrorStore = FormErrorStore();

  // store for handling error messages
  final ErrorStore errorStore = ErrorStore();

  // bool to check if current user is logged in
  bool isLoggedIn = false;

  // constructor:---------------------------------------------------------------
  _UserStore(Repository repository) : this._repository = repository {
    // setting up disposers
    _setupDisposers();

    // checking if user is logged in
    repository.isLoggedIn.then((value) {
      this.isLoggedIn = value;
    });
  }

  // disposers:-----------------------------------------------------------------
  late List<ReactionDisposer> _disposers;

  void _setupDisposers() {
    _disposers = [
      reaction((_) => success, (_) => success = false, delay: 200),
    ];
  }

  // empty responses:-----------------------------------------------------------
  static ObservableFuture<bool> emptyLoginResponse =
      ObservableFuture.value(false);

  // store variables:-----------------------------------------------------------
  @observable
  bool success = false;

  @observable
  ObservableFuture<bool> loginFuture = emptyLoginResponse;

  @computed
  bool get isLoading => loginFuture.status == FutureStatus.pending;

  @observable
  List<CourseDto> myCourses = [
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
        'oxx564hMBUI'),
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
  ];

  // actions:-------------------------------------------------------------------
  @action
  Future login(String email, String password) async {
    final future = _repository.login(email, password);
    loginFuture = ObservableFuture(future);
    await future.then((value) async {
      if (value) {
        _repository.saveIsLoggedIn(true);
        this.isLoggedIn = true;
        this.success = true;
      } else {
        print('failed to login');
      }
    }).catchError((e) {
      print(e);
      this.isLoggedIn = false;
      this.success = false;
      throw e;
    });
  }

  logout() {
    this.isLoggedIn = false;
    _repository.saveIsLoggedIn(false);
  }

  // general methods:-----------------------------------------------------------
  void dispose() {
    for (final d in _disposers) {
      d();
    }
  }

  @action
  void addCourse(CourseDto? course) {
    if (course != null) {
      myCourses.add(course);
      myCourses = myCourses;
    }
  }
}
