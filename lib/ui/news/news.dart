import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  static const List<String> categories = ["All", "Hello", "World"];
  static const int _selectedCategory = 0;
  @override
  Widget build(BuildContext context) {
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
                        child: Image.asset('assets/images/avatar.png'),
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
              itemCount: categories.length,
              separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 5.0,
                  ),
                  child: Text(
                    categories[index],
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
          Expanded(
            child: ListView.separated(
              itemCount: categories.length,
              itemBuilder: (BuildContext context, int index) {
                return Container();
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
