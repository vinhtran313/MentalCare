import 'package:boilerplate/ui/doctors/book_doctor.dart';
import 'package:flutter/material.dart';

class ListDoctorScreen extends StatefulWidget {
  const ListDoctorScreen({Key? key}) : super(key: key);

  @override
  State<ListDoctorScreen> createState() => _ListDoctorScreenState();
}

class DoctorItem {
  String id;
  String name;
  String avatarUrl;
  double rating;
  List<String> major;
  int age;
  int experience;
  String description;

  DoctorItem({
    required this.id,
    required this.name,
    required this.avatarUrl,
    required this.rating,
    required this.major,
    required this.age,
    required this.experience,
    required this.description,
  });
}

class FilterDoctor {
  String id;
  String title;
  List<DoctorItem> items;

  FilterDoctor({
    required this.id,
    required this.title,
    required this.items,
  });
}

class _ListDoctorScreenState extends State<ListDoctorScreen> {
  @override
  final List<FilterDoctor> fakeListDoctors = [
    FilterDoctor(
      id: '1',
      title: 'Hàng đầu',
      items: [
        DoctorItem(
          id: '1',
          name: 'Thạc sĩ Tâm lý Nguyễn Thị Thu Hiền',
          avatarUrl:
              'https://cdn.concung.com/storage/data/2021/SWEET%20BABY%20-%20GCO/ph%C3%B2ng%20kh%C3%A1m%20s%E1%BA%A3n%20ph%E1%BB%A5%20khoa%20qu%E1%BA%ADn%20t%C3%A2n%20b%C3%ACnh/phong-kham-san-phu-khoa-quan-tan-binh%20(4).jpg',
          rating: 4.5,
          major: ['Tâm lý học hành vi', 'Tâm lý học lâm sàng'],
          age: 45,
          experience: 15,
          description:
              'Là một trong 15 Thạc sĩ tâm lý lâm sàng đầu tiên trong trường trình hợp tác đào tạo Thạc sĩ Tâm lý lâm sàng giữa Đại học Giáo dục – Đại học Quốc gia Hà Nội và Đại học Vanderbilt Hoa Kỳ',
        ),
        DoctorItem(
          id: '2',
          name: 'PGS.TS, chuyên gia Tâm lý Trần Thành Nam',
          avatarUrl:
              'https://taimuihongsg.com/wp-content/uploads/2018/05/Kim-Bun-ThuongE_taimuihongsg.jpg',
          rating: 4,
          major: ['Tâm lý học lâm sàng'],
          age: 42,
          experience: 12,
          description:
              'Anh Trần Thành Nam là một diễn giả tích cực tham gia góp ý, phản biện xã hội trong lĩnh vực giáo dục, chăm sóc sức khỏe tinh thần cho trẻ em và cộng đồng. Là khách mời thường xuyên của các cơ quan truyền thông, báo chí trên cả nước.',
        ),
        DoctorItem(
          id: '3',
          name: 'PGS.TS, chuyên gia tâm lý Trần Thu Hương',
          avatarUrl:
              'https://cdn.youmed.vn/tin-tuc/wp-content/uploads/2021/06/bac-si-nguyen-thi-ngoc-lan.jpg',
          rating: 4.5,
          major: ['Tiến sĩ tâm lý học', 'Tham vấn tâm lý'],
          age: 52,
          experience: 20,
          description:
              'Chuyên gia tâm lý Trần Thu Hương có nhiều kinh nghiệm tư vấn về tâm lý học văn hóa, tâm lý học gia đình, tham vấn - trị liệu tâm lý cho trẻ em, tâm vận động trẻ em, các vấn đề phát triển trẻ em và thanh thiếu niên, tham vấn - trị liệu và chăm sóc sức khỏe tâm thần cho cá nhân và cộng đồng...',
        )
      ],
    ),
    FilterDoctor(
      id: '2',
      title: 'Phổ biến',
      items: [
        DoctorItem(
          id: '4',
          name: 'Thạc sĩ, chuyên gia tâm lý Đoàn Thị Hương',
          avatarUrl:
              'https://myduchospital.vn/vnt_upload/doctors/05_2018/gs.bsnguyen-thi-ngoc-phuong.png',
          rating: 4.5,
          major: ['Tâm lý học lâm sàng', "Tâm lý sức khỏe"],
          age: 45,
          experience: 15,
          description:
              'Chuyên gia tâm lý Đoàn Thị Hương là một trong những Thạc sĩ tâm lý lâm sàng đầu tiên trong chương trình hợp tác đào tạo thạc sĩ lâm sàng giữa Trường Đại học Giáo dục Hà Nội và Trường Đại học Vanderbilt, Hoa Kỳ.',
        ),
        DoctorItem(
          id: '5',
          name: 'Tiến sĩ, chuyên gia tâm lý Nguyễn Bá Đạt ',
          avatarUrl:
              'https://cdn.benhvienthucuc.vn/wp-content/uploads/2020/11/BS-Nguyen-Van-Nho.jpg',
          rating: 4,
          major: ['Tâm lý học lâm sàng', 'Rối loạn tâm thần'],
          age: 50,
          experience: 20,
          description:
              'Anh Nguyễn Bá Đạt là một trong những chuyên gia tâm lý uy tín, nhiều kinh nghiệm hàng đầu tại Hà Nội. Chuyên về các rối loạn tâm lý và sức khỏe tâm thần như: trầm cảm, lo âu, rối loạn lưỡng cực, rối nhiễu hậu sang chấn. Đặc biệt là tham vấn tâm lý trẻ em - trẻ vị thành niên, các vấn đề hôn nhân gia đình. ',
        ),
        DoctorItem(
          id: '6',
          name: 'Tiến Sĩ Tâm Lý Nguyễn Hoàng Khắc Hiếu',
          avatarUrl:
              'https://wikibacsi.com/wp-content/uploads/2019/04/bac-si-nguyen-huu-coc.jpg',
          rating: 4.5,
          major: ['Tiến sĩ tâm lý học', 'Tâm lý học lâm sàng'],
          age: 60,
          experience: 30,
          description:
              'Hiện tại anh đang là giảng viên của 25 trường đại học, chuyên gia huấn luyện của nhiều trung tâm. Đặc biệt anh luôn mang lại cái nhìn mới mẻ và sâu sắc về các vấn đề tâm lý. Với các video clip anh đã chinh phục hàng triệu con người và đạt thành tích cao. Kỷ lục gia về thành tích giảng dạy kỹ năng & diễn thuyết truyền cảm hứng thông qua video clip.',
        ),
        DoctorItem(
          id: '7',
          name: 'PGS.TS Huỳnh Văn Sơn',
          avatarUrl:
              'https://taimuihongsg.com/wp-content/uploads/2018/05/Kim-Bun-ThuongE_taimuihongsg.jpg',
          rating: 4.5,
          major: ['Tiến sĩ tâm lý học', 'Tâm lý học lâm sàng'],
          age: 56,
          experience: 25,
          description:
              'Chuyên gia tâm lý Huỳnh Văn Sơn có học vấn đáng nể. Ông đã từng tu nghiệp các ngành tâm lý tại Pháp và Bỉ. Và hiện tại ông đang công tác tại nhiều trung tâm, cơ sở nghiên cứu, điều trị và tư vấn tâm lý khác nhau tại Hồ Chí Minh. Ông đã xuất bản nhiều đầu sách giáo dục và tâm lý như khám phá trẻ em qua nét vẽ, Mẹ ơi tại sao,… Ông có phong cách nói uyên bác đầy chuyên sâu tạo cho người nghe đầy thuyết phục. Luôn đưa ra những lý thuyết và lí lẽ sắc bén để giải thích cho các tình huống tâm lý.',
        )
      ],
    )
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Danh sách chuyên gia",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Color(0xffF3F6FD),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Color(0xffF3F6FD),
            padding: EdgeInsets.fromLTRB(15.0, 0, 15.0, 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fakeListDoctors[0].title,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xff432C81),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return _buildDoctorItem(context, index, 0);
                    },
                    separatorBuilder: (context, index) => SizedBox(
                          height: 10,
                        ),
                    itemCount: fakeListDoctors[0].items.length),
                SizedBox(
                  height: 20,
                ),
                Text(
                  fakeListDoctors[0].title,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xff432C81),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return _buildDoctorItem(context, index, 1);
                    },
                    separatorBuilder: (context, index) => SizedBox(
                          height: 10,
                        ),
                    itemCount: fakeListDoctors[1].items.length),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDoctorItem(BuildContext context, int index, int listIndex) {
    FilterDoctor doctorData = fakeListDoctors[listIndex];

    return GestureDetector(
      onTap: () {
        showModalBottomSheet<dynamic>(
            isScrollControlled: true,
            context: context,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            )),
            builder: (context) {
              return SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 25,
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(300.0),
                          child: Image.network(
                            doctorData.items[index].avatarUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      FractionallySizedBox(
                        widthFactor: 0.7,
                        child: Text(
                          doctorData.items[index].name,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Tuổi',
                                style: TextStyle(
                                  color: Color(0xff828282),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                doctorData.items[index].age.toString(),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Kinh nghiệm',
                                style: TextStyle(
                                  color: Color(0xff828282),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '${doctorData.items[index].experience} năm',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 24,
                                width: 24,
                                child: Image.asset(
                                  'assets/images/Star.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Text(
                                doctorData.items[index].rating.toString(),
                                style: TextStyle(
                                  color: Color(0xffB201DE),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Text(
                        doctorData.items[index].description,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Chi phí: 300.000VND/h',
                        style: TextStyle(
                            color: Color(0xffB201DE),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BookingDoctor(
                                  doctor: doctorData.items[index]),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Color(0xff492497),
                          ),
                        ),
                        child: Text(
                          'Đặt lịch'.toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            });
      },
      child: Container(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(300.0),
                      child: Image.network(
                        doctorData.items[index].avatarUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          doctorData.items[index].name,
                          style: TextStyle(
                              color: Color(0xff432C81),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              height: 1.2),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Chuyên ngành",
                          style: TextStyle(
                            color: Color(0xff828282),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                          child: ListView.separated(
                            shrinkWrap: true,
                            itemBuilder:
                                (BuildContext context, int majorIndex) {
                              return Text(
                                doctorData.items[index].major[majorIndex],
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(
                                  color: Color(0xff432C81),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              );
                            },
                            itemCount: doctorData.items[index].major.length,
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) => SizedBox(
                              child: Text(', '),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  height: 24,
                  width: 24,
                  child: Image.asset('assets/images/Star.png'),
                ),
                Text(
                  doctorData.items[index].rating.toString(),
                  style: TextStyle(
                    color: Color(0xffB201DE),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            )
          ],
        ),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
