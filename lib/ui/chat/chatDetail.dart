import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../models/chat/chatMessageModal.dart';

class ChatDetailPage extends StatefulWidget {
  String name;
  String image;

  ChatDetailPage({required this.name, required this.image});

  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  List<ChatMessage> messages = [
    ChatMessage(messageContent: "Chào bạn", messageType: "receiver"),
    ChatMessage(
        messageContent: "Dạo này tình hình thế nào", messageType: "receiver"),
    ChatMessage(
        messageContent: "Chào bác sĩ, mọi việc tiến triển đều tốt",
        messageType: "sender"),
    ChatMessage(
        messageContent: "Tốt lắm, tiến bộ vượt kỳ vọng của tôi",
        messageType: "receiver"),
    ChatMessage(
        messageContent: "Tất cả đều có công của bác sĩ ạ",
        messageType: "sender"),
  ];

  String text = '';
  var txt = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color(0xff492497),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(
              left: 48,
              right: 15,
            ),
            child: Row(
              children: <Widget>[
                SizedBox(width: 2),
                CircleAvatar(
                  backgroundImage: NetworkImage(widget.image),
                  maxRadius: 20,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        widget.name,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Online",
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 13),
                      )
                    ],
                  ),
                ),
                Icon(
                  Icons.settings,
                  color: Colors.black54,
                )
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: ListView.builder(
              itemCount: messages.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  padding:
                      EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
                  child: Align(
                    alignment: (messages[index].messageType == 'receiver'
                        ? Alignment.topLeft
                        : Alignment.topRight),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: (messages[index].messageType == 'receiver'
                            ? Colors.grey.shade200
                            : Colors.blue[200]),
                      ),
                      padding: EdgeInsets.all(16),
                      child: Text(
                        messages[index].messageContent,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(bottom: 10),
              padding:
                  EdgeInsets.only(left: 15, bottom: 10, top: 10, right: 15),
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(Icons.add, color: Colors.white, size: 20),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      controller: txt,
                      decoration: InputDecoration(
                        hintText: 'Nhập tin nhắn...',
                        hintStyle: TextStyle(
                          color: Colors.black54,
                        ),
                        border: InputBorder.none,
                      ),
                      onChanged: (value) => {
                        setState(() {
                          text = value;
                        })
                      },
                    ),
                  ),
                  SizedBox(width: 15),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        messages.add(
                          ChatMessage(
                              messageContent: text, messageType: "sender"),
                        );
                        setState(() {
                          text = '';
                        });
                        txt.text = '';
                      });
                    },
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 18,
                    ),
                    backgroundColor: Colors.blue,
                    elevation: 0,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
