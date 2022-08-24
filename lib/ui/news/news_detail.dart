import 'package:flutter/material.dart';

class NewsDetail extends StatefulWidget {
  const NewsDetail({Key? key}) : super(key: key);

  @override
  State<NewsDetail> createState() => _NewsDetailState();
}

class _NewsDetailState extends State<NewsDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          "News Detail",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Color(0xffF3F6FD),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            color: Color(0xffF3F6FD),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  child: Image.network(
                    'https://img.vietcetera.com/wp-content/uploads/2019/08/cropped-Depression-Thumbnail.png',
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(25),
                  child: Column(children: [
                    Text(
                      'Tại sao sức khỏe tâm lý lại không được coi trọng tại Việt Nam?',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Khi một người bạn của tôi tâm sự với bố mẹ rằng anh ấy đang bị trầm cảm, họ cho rằng anh bị vậy là do “không chịu ra ngoài nhiều”. Đối với họ, trầm cảm dường như là một thứ gì đó do bản thân người bệnh tự gây ra và cũng có thể tự vượt qua được, miễn là người bệnh đừng quá yếu đuối và nhạy cảm.',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Những suy nghĩ như trên về bệnh tâm lý không phải là hiếm gặp. Cho đến những năm gần đây, sức khỏe tâm lý vẫn là một chủ đề khó nói và chứa đựng nhiều thành kiến tại Việt Nam. Điều này càng gây khó khăn hơn cho người bệnh trong việc giãi bày và tìm kiếm sự trợ giúp khi cần thiết.',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Sức khỏe tâm thần quan trọng là thế, nhưng tại sao nó lại không được coi trọng tại Việt Nam? Dưới đây là 3 nguyên nhân chính cho vấn đề này.',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Khác với các nước phương Tây, Việt Nam có một lối sống cộng đồng đặc trưng: lợi ích của tập thể (gia đình, họ hàng, xã hội…) luôn được ưu tiên hàng đầu. Điều này không hẳn là có hại, vì nó giúp ích cho sự phát triển và lợi ích chung của một tập thể. Tuy nhiên, lối sống ấy cũng khiến cho các nhu cầu cá nhân bị xem nhẹ và bỏ qua. Với những người mắc bệnh tâm lý, lối sống cộng đồng càng khiến cho họ khó nói lên khó khăn của mình, vì lo ngại rằng sẽ bị cho là ích kỷ, chỉ biết nghĩ đến bản thân. Ngoài ra, lối sống này cũng khiến cho người ta quan tâm quá mức tới những gì người khác nghĩ về mình. Đôi khi, những gia đình có thành viên bị mắc các chứng rối loạn tâm lý không đưa họ đi thăm khám kịp thời, chỉ vì lo ngại hàng xóm và bạn bè sẽ biết gia đình có người “mắc bệnh tâm thần”.',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
