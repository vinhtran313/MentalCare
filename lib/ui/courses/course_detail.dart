import 'package:boilerplate/widgets/youtube_player_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'courses.dart';

class CourseDetailScreen extends StatefulWidget {
  @override
  _CourseDetailScreenState createState() => _CourseDetailScreenState();
}

class _CourseDetailScreenState extends State<CourseDetailScreen> {
  CourseDto? _dataCourse;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as CourseDto?;
    this.setState(() {
      _dataCourse = data;
    });
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
      centerTitle: true,
      backgroundColor: Color(0xFFF3F6FD),
      title: Text('Course Detail'),
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
      padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
      child: Column(
        children: [
          YoutubePlayerWidget.getPlayerWidget(_dataCourse?.videoLink ?? ''),
          Container(
            child: Column(children: [
              Text('${_dataCourse?.name}'),
              Text('${_dataCourse?.description}'),
              Row(
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
                    '${_dataCourse?.subscript}',
                    style: TextStyle(fontSize: 14),
                  )
                ],
              )
            ]),
          )
        ],
      ),
    );
  }
}
