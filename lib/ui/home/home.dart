import 'package:boilerplate/stores/language/language_store.dart';
import 'package:boilerplate/stores/post/post_store.dart';
import 'package:boilerplate/stores/theme/theme_store.dart';
import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import './components/bottomTabBar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //stores:---------------------------------------------------------------------
  late PostStore _postStore;
  late ThemeStore _themeStore;
  late LanguageStore _languageStore;
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Chat',
      style: optionStyle,
    ),
    Text(
      'Index 3: List',
      style: optionStyle,
    ),
    Text(
      'Index 4: Settings',
      style: optionStyle,
    ),
    Text(
      'Index 2: Main',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // initializing stores
    _languageStore = Provider.of<LanguageStore>(context);
    _themeStore = Provider.of<ThemeStore>(context);
    _postStore = Provider.of<PostStore>(context);

    // check to see if already called api
    if (!_postStore.loading) {
      _postStore.getPosts();
    }
  }

  void _onTapped(int _selectedIndex) {
    print('_selectedIndex');
  }

  void _updateIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff000000),
        appBar: _buildAppBar(),
        body: SafeArea(
          top: true,
          left: true,
          right: true,
          minimum: EdgeInsets.only(top: 16.0),
          child: Text(
            "Hello World",
            style: TextStyle(color: Colors.white),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: _buildFloatingButton(),
        bottomNavigationBar: _buildBottomTabNavigation(),
      ),
    );
  }

  // app bar methods:-----------------------------------------------------------
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xffffffff),
    );
  }

  Widget _buildFloatingButton() {
    return Container(
      width: 75,
      height: 75,
      child: FloatingActionButton(
          splashColor: Colors.purple[50],
          backgroundColor: Color.fromRGBO(238, 232, 255, 1),
          onPressed: () {
            _updateIndex(4);
          },
          child: Container(
            padding: EdgeInsets.all(10),
            child: Image.asset('assets/images/logo_png.png', fit: BoxFit.fill),
          ),
          elevation: 2.0,
          enableFeedback: false),
    );
  }

  Widget _buildBottomTabNavigation() {
    return FABBottomAppBar(
      onItemTapped: _updateIndex,
      selectedIndex: _selectedIndex,
      centerItemText: '',
      color: Colors.grey,
      backgroundColor: Color.fromRGBO(243, 246, 253, 1),
      selectedColor: Color.fromARGB(255, 137, 2, 161),
      notchedShape: CircularNotchedRectangle(),
      onTabSelected: _onTapped,
      items: [
        FABBottomAppBarItem(
            iconData: 'assets/images/home.svg',
            iconDataSelected: 'assets/images/home-selected.svg',
            text: 'หน้าแรก'),
        FABBottomAppBarItem(
            iconData: 'assets/images/chat.svg',
            iconDataSelected: 'assets/images/chat-selected.svg',
            text: 'ค้นหา'),
        FABBottomAppBarItem(
            iconData: 'assets/images/list-course.svg',
            iconDataSelected: 'assets/images/list-course-selected.svg',
            text: 'โปรไฟล์'),
        FABBottomAppBarItem(
            iconData: 'assets/images/setting.svg',
            iconDataSelected: 'assets/images/setting-selected.svg',
            text: 'อื่นๆ'),
      ],
    );
  }
}
