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
        name: "TS Đỗ Bá Đạt",
        text: "Cố gắng lên nhé",
        image:
            "https://preview.keenthemes.com/metronic-v4/theme_rtl/assets/pages/media/profile/profile_user.jpg",
        time: "Bây giờ"),
    ChatUsers(
        name: "TS Đoàn Thị Hiền",
        text: "Tốt lắm rồi, mọi chuyện đều sẽ ổn thôi",
        image:
            "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80",
        time: "Hôm qua"),
    ChatUsers(
        name: "PGS.TS Trần Mạnh Hùng",
        text: "Tiến triển tốt hơn dự tính",
        image:
            "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80",
        time: "25 Tháng 8"),
    ChatUsers(
        name: "TS Hà Trung Quân",
        text: "Có thể tâm sự với tôi được không",
        image:
            "https://www.citrix.com/blogs/wp-content/upload/2018/03/slack_compressed-e1521621363404-360x360.jpg",
        time: "25 Tháng 8"),
    ChatUsers(
        name: "TS Hoàng Trung",
        text: "Cảm ơn, tôi rất trân trọng!",
        image:
            "https://t4.ftcdn.net/jpg/04/31/64/75/360_F_431647519_usrbQ8Z983hTYe8zgA7t1XVc5fEtqcpa.jpg",
        time: "23 Tháng 8"),
    ChatUsers(
        name: "PGS.TS Võ Văn Kình",
        text: "Ghi lại quá trình giúp tôi nhé",
        image:
            "https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg",
        time: "17 Tháng 8"),
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
                  Text("Lịch sử trò chuyện",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
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
                      Text("Thêm mới",
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
                hintText: 'Tìm kiếm',
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
