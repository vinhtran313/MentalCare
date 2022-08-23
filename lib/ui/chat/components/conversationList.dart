import 'package:flutter/material.dart';
import '../chatDetail.dart';

class ConversationList extends StatefulWidget {
  String name;
  String text;
  String image;
  String time;
  bool isMessageRead;

  ConversationList({
    required this.name,
    required this.text,
    required this.image,
    required this.time,
    required this.isMessageRead,
  });

  @override
  _State createState() => _State();
}

class _State extends State<ConversationList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ChatDetailPage(name: widget.name, image: widget.image);
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage(widget.image),
              maxRadius: 30,
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Container(
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.name,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      widget.text,
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey.shade600,
                          fontWeight: widget.isMessageRead
                              ? FontWeight.bold
                              : FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ),
            Text(widget.time,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: widget.isMessageRead
                        ? FontWeight.bold
                        : FontWeight.normal))
          ],
        ),
      ),
    );
  }
}
