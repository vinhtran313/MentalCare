import 'package:flutter/material.dart';
import '../../models/chat/chatUserModal.dart';
import './components/conversationList.dart';

class ChatPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        name: "Jane Russel",
        text: "Awesome Setup",
        image:
            "https://preview.keenthemes.com/metronic-v4/theme_rtl/assets/pages/media/profile/profile_user.jpg",
        time: "Now"),
    ChatUsers(
        name: "Glady's Murphy",
        text: "That's Great",
        image:
            "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80",
        time: "Yesterday"),
    ChatUsers(
        name: "Jorge Henry",
        text: "Hey where are you?",
        image:
            "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80",
        time: "31 Mar"),
    ChatUsers(
        name: "Philip Fox",
        text: "Busy! Call me in 20 mins",
        image:
            "https://www.citrix.com/blogs/wp-content/upload/2018/03/slack_compressed-e1521621363404-360x360.jpg",
        time: "28 Mar"),
    ChatUsers(
        name: "Debra Hawkins",
        text: "Thankyou, It's awesome",
        image:
            "https://t4.ftcdn.net/jpg/04/31/64/75/360_F_431647519_usrbQ8Z983hTYe8zgA7t1XVc5fEtqcpa.jpg",
        time: "23 Mar"),
    ChatUsers(
        name: "Jacob Pena",
        text: "will update you in evening",
        image:
            "https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg",
        time: "17 Mar"),
    ChatUsers(
        name: "Andrey Jones",
        text: "Can you please share the file?",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhrlH9QlMjus9pQY0IPfd97FE7RdNVga3MY-lMqsaltgspxx3q_-Bg6wcOJDYGnPy1gIU&usqp=CAU",
        time: "24 Feb"),
    ChatUsers(
        name: "John Wick",
        text: "How are you?",
        image:
            "https://us.123rf.com/450wm/fizkes/fizkes2010/fizkes201000740/157348848-narrow-wide-panoramic-view-headshot-portrait-of-smiling-african-american-young-woman-pose-at-home-ba.jpg?ver=6",
        time: "18 Feb"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Cuoc tro chuyen",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                  Container(
                    padding:
                        EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.purple),
                    child: Row(children: <Widget>[
                      Icon(Icons.add, color: Colors.pink[50], size: 20),
                      SizedBox(
                        width: 2,
                      ),
                      Text("Them moi",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ]),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 16),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Tim kiem...',
                hintStyle: TextStyle(color: Colors.grey.shade600),
                prefixIcon:
                    Icon(Icons.search, color: Colors.grey.shade600, size: 20),
                filled: true,
                fillColor: Colors.grey.shade100,
                contentPadding: EdgeInsets.all(18),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey.shade100),
                ),
              ),
            ),
          ),
          ListView.builder(
            itemCount: chatUsers.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 16),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ConversationList(
                name: chatUsers[index].name,
                text: chatUsers[index].text,
                image: chatUsers[index].image,
                time: chatUsers[index].time,
                isMessageRead: (index == 0 || index == 3) ? true : false,
              );
            },
          )
        ],
      ),
    ));
  }
}
