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
        CourseDto.descriptionDemo,
        'Course for mental heal level 1',
        500,
        true,
        'https://www.royaleinstitution.com/images/mental_health_courses_india.png',
        '(98)',
        'oxx564hMBUI',
        lessons: [
          LessonDto(
              '111',
              CourseDto.descriptionDemo,
              'Lesson 1: Course for mental heal level 1',
              'oxx564hMBUI',
              'Lesson 1',
              'https://www.royaleinstitution.com/images/mental_health_courses_india.png'),
          LessonDto(
              '112',
              CourseDto.descriptionDemo,
              'Lesson 2: Course for mental heal level 1',
              'oxx564hMBUI',
              'Lesson 2',
              'https://www.royaleinstitution.com/images/mental_health_courses_india.png'),
          LessonDto(
              '113',
              CourseDto.descriptionDemo,
              'Lesson 3: Course for mental heal level 1',
              'oxx564hMBUI',
              'Lesson 3',
              'https://www.royaleinstitution.com/images/mental_health_courses_india.png'),
          LessonDto(
              '114',
              CourseDto.descriptionDemo,
              'Lesson 4: Course for mental heal level 1',
              'oxx564hMBUI',
              'Lesson 4',
              'https://www.royaleinstitution.com/images/mental_health_courses_india.png')
        ]),
    CourseDto(
        '12',
        'Do Xuan Tien',
        CourseDto.descriptionDemo,
        'Course for mental heal level 2',
        500,
        false,
        'https://www.royaleinstitution.com/images/mental_health_courses_india.png',
        '(5)',
        'oxx564hMBUI',
        lessons: [
          LessonDto(
              '211',
              CourseDto.descriptionDemo,
              'Lesson 1: Course for mental heal level 2',
              'oxx564hMBUI',
              'Lesson 1',
              'https://www.royaleinstitution.com/images/mental_health_courses_india.png'),
          LessonDto(
              '212',
              CourseDto.descriptionDemo,
              'Lesson 2: Course for mental heal level 2',
              'oxx564hMBUI',
              'Lesson 2',
              'https://www.royaleinstitution.com/images/mental_health_courses_india.png'),
          LessonDto(
              '213',
              CourseDto.descriptionDemo,
              'Lesson 3: Course for mental heal level 2',
              'oxx564hMBUI',
              'Lesson 3',
              'https://www.royaleinstitution.com/images/mental_health_courses_india.png'),
          LessonDto(
              '214',
              CourseDto.descriptionDemo,
              'Lesson 4: Course for mental heal level 2',
              'oxx564hMBUI',
              'Lesson 4',
              'https://www.royaleinstitution.com/images/mental_health_courses_india.png')
        ]),
    CourseDto(
        '13',
        'Do Xuan Tien',
        CourseDto.descriptionDemo,
        'Course for mental heal level 3',
        500,
        false,
        'https://www.royaleinstitution.com/images/mental_health_courses_india.png',
        '(56)',
        'oxx564hMBUI',
        lessons: [
          LessonDto(
              '311',
              CourseDto.descriptionDemo,
              'Lesson 1: Course for mental heal level 3',
              'oxx564hMBUI',
              'Lesson 1',
              'https://www.royaleinstitution.com/images/mental_health_courses_india.png'),
          LessonDto(
              '312',
              CourseDto.descriptionDemo,
              'Lesson 2: Course for mental heal level 3',
              'oxx564hMBUI',
              'Lesson 2',
              'https://www.royaleinstitution.com/images/mental_health_courses_india.png'),
          LessonDto(
              '313',
              CourseDto.descriptionDemo,
              'Lesson 3: Course for mental heal level 3',
              'oxx564hMBUI',
              'Lesson 3',
              'https://www.royaleinstitution.com/images/mental_health_courses_india.png'),
          LessonDto(
              '314',
              CourseDto.descriptionDemo,
              'Lesson 4: Course for mental heal level 3',
              'oxx564hMBUI',
              'Lesson 4',
              'https://www.royaleinstitution.com/images/mental_health_courses_india.png')
        ]),
    CourseDto(
        '31',
        'Trinh Van Quyet',
        CourseDto.descriptionDemo,
        'Metal care for Stock trader sesson 1',
        1299,
        false,
        'https://www.royaleinstitution.com/images/mental_health_courses_india.png',
        '(5632)',
        'oxx564hMBUI',
        lessons: [
          LessonDto(
              '311',
              CourseDto.descriptionDemo,
              'Lesson 1: Metal care for Stock trader sesson 1',
              'oxx564hMBUI',
              'Lesson 1',
              'https://www.royaleinstitution.com/images/mental_health_courses_india.png'),
          LessonDto(
              '312',
              CourseDto.descriptionDemo,
              'Lesson 2: Metal care for Stock trader sesson 1',
              'oxx564hMBUI',
              'Lesson 2',
              'https://www.royaleinstitution.com/images/mental_health_courses_india.png'),
          LessonDto(
              '313',
              CourseDto.descriptionDemo,
              'Lesson 3: Metal care for Stock trader sesson 1',
              'oxx564hMBUI',
              'Lesson 3',
              'https://www.royaleinstitution.com/images/mental_health_courses_india.png'),
          LessonDto(
              '314',
              CourseDto.descriptionDemo,
              'Lesson 4: Metal care for Stock trader sesson 1',
              'oxx564hMBUI',
              'Lesson 4',
              'https://www.royaleinstitution.com/images/mental_health_courses_india.png')
        ]),
    CourseDto(
        '31',
        'Trinh Van Quyet',
        CourseDto.descriptionDemo,
        'Metal care for Stock trader sesson 1',
        1299,
        false,
        'https://www.royaleinstitution.com/images/mental_health_courses_india.png',
        '(5632)',
        'oxx564hMBUI',
        lessons: [
          LessonDto(
              '311',
              CourseDto.descriptionDemo,
              'Lesson 1: Metal care for Stock trader sesson 1',
              'oxx564hMBUI',
              'Lesson 1',
              'https://www.royaleinstitution.com/images/mental_health_courses_india.png'),
          LessonDto(
              '312',
              CourseDto.descriptionDemo,
              'Lesson 2: Metal care for Stock trader sesson 1',
              'oxx564hMBUI',
              'Lesson 2',
              'https://www.royaleinstitution.com/images/mental_health_courses_india.png'),
          LessonDto(
              '313',
              CourseDto.descriptionDemo,
              'Lesson 3: Metal care for Stock trader sesson 1',
              'oxx564hMBUI',
              'Lesson 3',
              'https://www.royaleinstitution.com/images/mental_health_courses_india.png'),
          LessonDto(
              '314',
              CourseDto.descriptionDemo,
              'Lesson 4: Metal care for Stock trader sesson 1',
              'oxx564hMBUI',
              'Lesson 4',
              'https://www.royaleinstitution.com/images/mental_health_courses_india.png')
        ])
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
}
