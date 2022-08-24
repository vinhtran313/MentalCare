import 'package:boilerplate/ui/news/news_detail.dart';
import 'package:flutter/material.dart';

class NewsItem {
  String id;
  String title;
  String description;
  String imageUrl;

  NewsItem(this.id, this.title, this.description, this.imageUrl);
}

class NewsCategory {
  String id;
  String title;
  List<NewsItem> items;

  NewsCategory(this.id, this.title, this.items);
}

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  static const List<String> categories = ["All", "Hello", "World"];
  int _selectedCategory = 0;

  final List<NewsCategory> fakeCategories = [
    NewsCategory(
      "1",
      "All",
      [
        NewsItem(
          "1",
          "Hello",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lacus nisl, cursus a purus non, feugiat facilisis nulla. Praesent ornare ...",
          'assets/images/avatar.png',
        ),
        NewsItem(
          "2",
          "Hello",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lacus nisl, cursus a purus non, feugiat facilisis nulla. Praesent ornare ...",
          'assets/images/avatar.png',
        ),
        NewsItem(
          "3",
          "Hello",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lacus nisl, cursus a purus non, feugiat facilisis nulla. Praesent ornare ...",
          'assets/images/avatar.png',
        ),
        NewsItem(
          "4",
          "Hello",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lacus nisl, cursus a purus non, feugiat facilisis nulla. Praesent ornare ...",
          'assets/images/avatar.png',
        ),
        NewsItem(
          "5",
          "Hello",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lacus nisl, cursus a purus non, feugiat facilisis nulla. Praesent ornare ...",
          'assets/images/avatar.png',
        ),
        NewsItem(
          "6",
          "Hello",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lacus nisl, cursus a purus non, feugiat facilisis nulla. Praesent ornare ...",
          'assets/images/avatar.png',
        ),
        NewsItem(
          "7",
          "Hello",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lacus nisl, cursus a purus non, feugiat facilisis nulla. Praesent ornare ...",
          'assets/images/avatar.png',
        ),
        NewsItem(
          "8",
          "Hello",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lacus nisl, cursus a purus non, feugiat facilisis nulla. Praesent ornare ...",
          'assets/images/avatar.png',
        ),
        NewsItem(
          "9",
          "Hello",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lacus nisl, cursus a purus non, feugiat facilisis nulla. Praesent ornare ...",
          'assets/images/avatar.png',
        ),
        NewsItem(
          "10",
          "Hello",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lacus nisl, cursus a purus non, feugiat facilisis nulla. Praesent ornare ...",
          'assets/images/avatar.png',
        ),
      ],
    ),
    NewsCategory(
      "2",
      "Popular",
      [
        NewsItem(
          "1",
          "Hello",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lacus nisl, cursus a purus non, feugiat facilisis nulla. Praesent ornare ...",
          'assets/images/avatar.png',
        ),
        NewsItem(
          "2",
          "Hello",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lacus nisl, cursus a purus non, feugiat facilisis nulla. Praesent ornare ...",
          'assets/images/avatar.png',
        ),
        NewsItem(
          "3",
          "Hello",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lacus nisl, cursus a purus non, feugiat facilisis nulla. Praesent ornare ...",
          'assets/images/avatar.png',
        ),
        NewsItem(
          "4",
          "Hello",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lacus nisl, cursus a purus non, feugiat facilisis nulla. Praesent ornare ...",
          'assets/images/avatar.png',
        ),
        NewsItem(
          "5",
          "Hello",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lacus nisl, cursus a purus non, feugiat facilisis nulla. Praesent ornare ...",
          'assets/images/avatar.png',
        ),
        NewsItem(
          "6",
          "Hello",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lacus nisl, cursus a purus non, feugiat facilisis nulla. Praesent ornare ...",
          'assets/images/avatar.png',
        ),
        NewsItem(
          "7",
          "Hello",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lacus nisl, cursus a purus non, feugiat facilisis nulla. Praesent ornare ...",
          'assets/images/avatar.png',
        ),
        NewsItem(
          "8",
          "Hello",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lacus nisl, cursus a purus non, feugiat facilisis nulla. Praesent ornare ...",
          'assets/images/avatar.png',
        ),
        NewsItem(
          "9",
          "Hello",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lacus nisl, cursus a purus non, feugiat facilisis nulla. Praesent ornare ...",
          'assets/images/avatar.png',
        ),
        NewsItem(
          "10",
          "Hello",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lacus nisl, cursus a purus non, feugiat facilisis nulla. Praesent ornare ...",
          'assets/images/avatar.png',
        ),
      ],
    ),
    NewsCategory(
      "3",
      "Recommended",
      [
        NewsItem(
          "1",
          "Hello",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lacus nisl, cursus a purus non, feugiat facilisis nulla. Praesent ornare ...",
          'assets/images/avatar.png',
        ),
        NewsItem(
          "2",
          "Hello",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lacus nisl, cursus a purus non, feugiat facilisis nulla. Praesent ornare ...",
          'assets/images/avatar.png',
        ),
        NewsItem(
          "3",
          "Hello",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lacus nisl, cursus a purus non, feugiat facilisis nulla. Praesent ornare ...",
          'assets/images/avatar.png',
        ),
        NewsItem(
          "4",
          "Hello",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lacus nisl, cursus a purus non, feugiat facilisis nulla. Praesent ornare ...",
          'assets/images/avatar.png',
        ),
        NewsItem(
          "5",
          "Hello",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lacus nisl, cursus a purus non, feugiat facilisis nulla. Praesent ornare ...",
          'assets/images/avatar.png',
        ),
        NewsItem(
          "6",
          "Hello",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lacus nisl, cursus a purus non, feugiat facilisis nulla. Praesent ornare ...",
          'assets/images/avatar.png',
        ),
        NewsItem(
          "7",
          "Hello",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lacus nisl, cursus a purus non, feugiat facilisis nulla. Praesent ornare ...",
          'assets/images/avatar.png',
        ),
        NewsItem(
          "8",
          "Hello",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lacus nisl, cursus a purus non, feugiat facilisis nulla. Praesent ornare ...",
          'assets/images/avatar.png',
        ),
        NewsItem(
          "9",
          "Hello",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lacus nisl, cursus a purus non, feugiat facilisis nulla. Praesent ornare ...",
          'assets/images/avatar.png',
        ),
        NewsItem(
          "10",
          "Hello",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lacus nisl, cursus a purus non, feugiat facilisis nulla. Praesent ornare ...",
          'assets/images/avatar.png',
        ),
      ],
    )
  ];
  @override
  Widget build(BuildContext context) {
    Widget _buildNewsItem(index) {
      List<NewsItem> list = fakeCategories[_selectedCategory].items;
      return GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const NewsDetail()));
        },
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 70,
                width: 78,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                  child: Image.asset(
                    list[index].imageUrl,
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      list[index].title,
                      style: TextStyle(
                          color: Color(0xff432C81),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          height: 1.2),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      list[index].description,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: TextStyle(
                          color: Color(0xff432C81), fontSize: 10, height: 1.2),
                    ),
                  ],
                ),
              ),
            ],
          ),
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
      );
    }

    return Container(
      padding: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(300.0),
                        child: Image.asset(
                          'assets/images/avatar.png',
                        ),
                      ),
                      margin: EdgeInsets.only(
                        right: 15.0,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        child: Text(
                          "Xin chào,",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        margin: EdgeInsets.only(
                          bottom: 5.0,
                        ),
                      ),
                      Text(
                        "Tran Hoang Vinh",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                  ),
                ],
              ),
              Container(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset('assets/images/search-ic.png'),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 25,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: fakeCategories.length,
              separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 5.0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedCategory = index;
                      });
                    },
                    child: Text(
                      fakeCategories[index].title,
                      style: TextStyle(
                        color: _selectedCategory == index
                            ? Colors.white
                            : Colors.black,
                        fontSize: 14.0,
                        fontWeight: _selectedCategory == index
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: _selectedCategory == index
                        ? Color(0xff492497)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.separated(
              itemCount: fakeCategories[_selectedCategory].items.length,
              itemBuilder: (BuildContext context, int index) {
                return _buildNewsItem(index);
              },
              separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
