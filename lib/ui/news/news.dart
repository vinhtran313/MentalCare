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
      "Tất cả",
      [
        NewsItem(
          "1",
          "Những kiến thức cơ bản về sức khỏe tâm thần",
          "Cũng như sức khỏe thể chất, sức khỏe tâm thần đang ngày càng được quan tâm hơn. Sức khỏe tâm thần liên quan đến lời nói, hành vi, cảm xúc và tâm lý của bạn. Một tinh thần tốt giúp bạn có trải nghiệm cuộc sống tốt hơn và luôn tràn đầy năng lượng. Nó giúp bạn vượt qua khó khăn và đương đầu với những vấn đề của cuộc sống một cách tích cực.",
          'https://baovetuonglai.vn/media/uploads/2020/12/25/1412202.jpg',
        ),
        NewsItem(
          "2",
          "Phòng tránh các vấn đề sức khỏe tâm thần ở học sinh",
          "Các vấn đề sức khỏe tâm thần ở thanh thiếu niên là một vấn đề cần được quan tâm nhiều hơn. Tự tử ở lứa tuổi 15-29 là nguyên nhân gây tử vong đứng hàng thứ hai chỉ sau tai nạn giao thông.",
          'https://bslevankien.com/wp-content/uploads/2022/04/suc-khoe-TT.jpg',
        ),
        NewsItem(
          "3",
          "Sức khỏe tâm thần ở Việt Nam",
          "Sức khỏe tâm thần là nền tảng cho sự khỏe mạnh và hoạt động hiệu quả của các cá nhân. Sức khỏe tâm thần không chỉ là trạng thái không có rối loạn tâm thần, mà còn bao gồm khả năng suy nghĩ, học hỏi và hiểu được cảm xúc của một người và phản ứng của người khác. Sức khỏe tâm thần là một trạng thái cân bằng, cả bên trong cơ thể và với môi trường. Các yếu tố thể chất, tâm lý, xã hội, văn hóa, tinh thần và các",
          'https://baovetuonglai.vn/media/uploads/2020/12/25/1412202.jpg',
        ),
        NewsItem(
          "4",
          "Sức khỏe tâm thần là gì?",
          "Có thể định nghĩa như sau:Sức khỏe tâm thần là khả năng của bộ máy tâm lý hoạt động một cách hoàn toàn hợp lý, có hiệu quả và đương đầu một cách mềm dẻo trước những tình huống khó khăn mà vẫn có thể tìm lại được sự cân bằng cho mình. Như vậy, muốn có sức khỏe tâm thần, chúng ta cần phả",
          'https://bslevankien.com/wp-content/uploads/2022/04/suc-khoe-TT.jpg',
        ),
        NewsItem(
          "5",
          "Ảnh hưởng của cảm xúc tới sức khỏe",
          "Trong đời sống của con người được chia ra đời sống vật chất và đời sống tinh thần. Tinh thần là một phần quan trong, tất yếu của cuộc sống. Tuy nhiên không phải ai cũng biết cảm xúc ảnh hưởng đến sức khỏe như thế nào. Bài viết này sẽ giúp bạn đọc hiểu rõ hơn về những ảnh hưởng của tinh thần đến sức khỏe con người.",
          'https://login.medlatec.vn//ImagePath/images/20210513/20210513_hau-het-moi-nguoi-deu-trai-qua-tam-ly-cang-thang-ap-luc.jpg',
        ),
        NewsItem(
          "6",
          "Tình trạng trầm cảm ở Việt Nam hiện nay",
          "Theo ước tính của Tổ chức Y tế thế giới (WHO), đến năm 2020, trầm cảm là căn bệnh thứ hai gây hại đến sức khỏe của con người chỉ sau tim mạch. Trong đó trầm cảm ở Việt Nam hiện nay đang có chiều hướng gia tăng đặc biệt là trong giới trẻ.",
          'https://baovetuonglai.vn/media/uploads/2020/12/25/1412202.jpg',
        ),
      ],
    ),
    NewsCategory(
      "2",
      "Phổ biến",
      [
        NewsItem(
          "2",
          "Phòng tránh các vấn đề sức khỏe tâm thần ở học sinh",
          "Các vấn đề sức khỏe tâm thần ở thanh thiếu niên là một vấn đề cần được quan tâm nhiều hơn. Tự tử ở lứa tuổi 15-29 là nguyên nhân gây tử vong đứng hàng thứ hai chỉ sau tai nạn giao thông.",
          'https://baovetuonglai.vn/media/uploads/2020/12/25/1412202.jpg',
        ),
        NewsItem(
          "1",
          "Những kiến thức cơ bản về sức khỏe tâm thần",
          "Cũng như sức khỏe thể chất, sức khỏe tâm thần đang ngày càng được quan tâm hơn. Sức khỏe tâm thần liên quan đến lời nói, hành vi, cảm xúc và tâm lý của bạn. Một tinh thần tốt giúp bạn có trải nghiệm cuộc sống tốt hơn và luôn tràn đầy năng lượng. Nó giúp bạn vượt qua khó khăn và đương đầu với những vấn đề của cuộc sống một cách tích cực.",
          'https://bslevankien.com/wp-content/uploads/2022/04/suc-khoe-TT.jpg',
        ),
        NewsItem(
          "4",
          "Sức khỏe tâm thần là gì?",
          "Có thể định nghĩa như sau:Sức khỏe tâm thần là khả năng của bộ máy tâm lý hoạt động một cách hoàn toàn hợp lý, có hiệu quả và đương đầu một cách mềm dẻo trước những tình huống khó khăn mà vẫn có thể tìm lại được sự cân bằng cho mình. Như vậy, muốn có sức khỏe tâm thần, chúng ta cần phả",
          'https://login.medlatec.vn//ImagePath/images/20210513/20210513_hau-het-moi-nguoi-deu-trai-qua-tam-ly-cang-thang-ap-luc.jpg',
        ),
        NewsItem(
          "3",
          "Sức khỏe tâm thần ở Việt Nam",
          "Sức khỏe tâm thần là nền tảng cho sự khỏe mạnh và hoạt động hiệu quả của các cá nhân. Sức khỏe tâm thần không chỉ là trạng thái không có rối loạn tâm thần, mà còn bao gồm khả năng suy nghĩ, học hỏi và hiểu được cảm xúc của một người và phản ứng của người khác. Sức khỏe tâm thần là một trạng thái cân bằng, cả bên trong cơ thể và với môi trường. Các yếu tố thể chất, tâm lý, xã hội, văn hóa, tinh thần và các",
          'https://bslevankien.com/wp-content/uploads/2022/04/suc-khoe-TT.jpg',
        ),
        NewsItem(
          "6",
          "Tình trạng trầm cảm ở Việt Nam hiện nay",
          "Theo ước tính của Tổ chức Y tế thế giới (WHO), đến năm 2020, trầm cảm là căn bệnh thứ hai gây hại đến sức khỏe của con người chỉ sau tim mạch. Trong đó trầm cảm ở Việt Nam hiện nay đang có chiều hướng gia tăng đặc biệt là trong giới trẻ.",
          'https://bslevankien.com/wp-content/uploads/2022/04/suc-khoe-TT.jpg',
        ),
        NewsItem(
          "5",
          "Ảnh hưởng của cảm xúc tới sức khỏe",
          "Trong đời sống của con người được chia ra đời sống vật chất và đời sống tinh thần. Tinh thần là một phần quan trong, tất yếu của cuộc sống. Tuy nhiên không phải ai cũng biết cảm xúc ảnh hưởng đến sức khỏe như thế nào. Bài viết này sẽ giúp bạn đọc hiểu rõ hơn về những ảnh hưởng của tinh thần đến sức khỏe con người.",
          'https://login.medlatec.vn//ImagePath/images/20210513/20210513_hau-het-moi-nguoi-deu-trai-qua-tam-ly-cang-thang-ap-luc.jpg',
        ),
      ],
    ),
    NewsCategory(
      "3",
      "Dành cho bạn",
      [
        NewsItem(
          "2",
          "Phòng tránh các vấn đề sức khỏe tâm thần ở học sinh",
          "Các vấn đề sức khỏe tâm thần ở thanh thiếu niên là một vấn đề cần được quan tâm nhiều hơn. Tự tử ở lứa tuổi 15-29 là nguyên nhân gây tử vong đứng hàng thứ hai chỉ sau tai nạn giao thông.",
          'https://login.medlatec.vn//ImagePath/images/20210513/20210513_hau-het-moi-nguoi-deu-trai-qua-tam-ly-cang-thang-ap-luc.jpg',
        ),
        NewsItem(
          "3",
          "Sức khỏe tâm thần ở Việt Nam",
          "Sức khỏe tâm thần là nền tảng cho sự khỏe mạnh và hoạt động hiệu quả của các cá nhân. Sức khỏe tâm thần không chỉ là trạng thái không có rối loạn tâm thần, mà còn bao gồm khả năng suy nghĩ, học hỏi và hiểu được cảm xúc của một người và phản ứng của người khác. Sức khỏe tâm thần là một trạng thái cân bằng, cả bên trong cơ thể và với môi trường. Các yếu tố thể chất, tâm lý, xã hội, văn hóa, tinh thần và các",
          'https://baovetuonglai.vn/media/uploads/2020/12/25/1412202.jpg',
        ),
        NewsItem(
          "1",
          "Những kiến thức cơ bản về sức khỏe tâm thần",
          "Cũng như sức khỏe thể chất, sức khỏe tâm thần đang ngày càng được quan tâm hơn. Sức khỏe tâm thần liên quan đến lời nói, hành vi, cảm xúc và tâm lý của bạn. Một tinh thần tốt giúp bạn có trải nghiệm cuộc sống tốt hơn và luôn tràn đầy năng lượng. Nó giúp bạn vượt qua khó khăn và đương đầu với những vấn đề của cuộc sống một cách tích cực.",
          'https://baovetuonglai.vn/media/uploads/2020/12/25/1412202.jpg',
        ),
        NewsItem(
          "5",
          "Ảnh hưởng của cảm xúc tới sức khỏe",
          "Trong đời sống của con người được chia ra đời sống vật chất và đời sống tinh thần. Tinh thần là một phần quan trong, tất yếu của cuộc sống. Tuy nhiên không phải ai cũng biết cảm xúc ảnh hưởng đến sức khỏe như thế nào. Bài viết này sẽ giúp bạn đọc hiểu rõ hơn về những ảnh hưởng của tinh thần đến sức khỏe con người.",
          'https://login.medlatec.vn//ImagePath/images/20210513/20210513_hau-het-moi-nguoi-deu-trai-qua-tam-ly-cang-thang-ap-luc.jpg',
        ),
        NewsItem(
          "4",
          "Sức khỏe tâm thần là gì?",
          "Có thể định nghĩa như sau:Sức khỏe tâm thần là khả năng của bộ máy tâm lý hoạt động một cách hoàn toàn hợp lý, có hiệu quả và đương đầu một cách mềm dẻo trước những tình huống khó khăn mà vẫn có thể tìm lại được sự cân bằng cho mình. Như vậy, muốn có sức khỏe tâm thần, chúng ta cần phả",
          'https://baovetuonglai.vn/media/uploads/2020/12/25/1412202.jpg',
        ),
        NewsItem(
          "6",
          "Tình trạng trầm cảm ở Việt Nam hiện nay",
          "Theo ước tính của Tổ chức Y tế thế giới (WHO), đến năm 2020, trầm cảm là căn bệnh thứ hai gây hại đến sức khỏe của con người chỉ sau tim mạch. Trong đó trầm cảm ở Việt Nam hiện nay đang có chiều hướng gia tăng đặc biệt là trong giới trẻ.",
          'https://baovetuonglai.vn/media/uploads/2020/12/25/1412202.jpg',
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
                  child: Image.network(
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
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
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
                        "Trần Hoàng Vinh",
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
