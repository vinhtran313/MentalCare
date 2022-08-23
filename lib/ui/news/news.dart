import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 60,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(300.0),
                      child: Image.asset('assets/images/avatar.png'),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text("Xin chào,"),
                        Text("Tran Hoang Vinh"),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
