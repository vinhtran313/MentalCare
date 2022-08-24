import 'package:boilerplate/ui/calendar/calendar.dart';
import 'package:boilerplate/ui/doctors/list_doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class PurchaseScreen extends StatefulWidget {
  const PurchaseScreen({Key? key, required this.doctor}) : super(key: key);

  final DoctorItem doctor;

  @override
  State<PurchaseScreen> createState() => _PurchaseScreenState();
}

class _PurchaseScreenState extends State<PurchaseScreen> {
  final today = DateTime.now();
  @override
  Widget build(BuildContext context) {
    today.add(Duration(days: 2));
    var newTime = new DateTime(today.year, today.month, today.day, 9, 0);
    return Scaffold(
      backgroundColor: Color(0xffF3F6FD),
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color(0xff492497),
        ),
        title: Text(
          "Thanh toán",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Container(
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
                                    widget.doctor.avatarUrl,
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
                                      widget.doctor.name,
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
                                        itemBuilder: (BuildContext context,
                                            int majorIndex) {
                                          return Text(
                                            widget.doctor.major[majorIndex],
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style: TextStyle(
                                              color: Color(0xff432C81),
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          );
                                        },
                                        itemCount: widget.doctor.major.length,
                                        scrollDirection: Axis.horizontal,
                                        separatorBuilder: (context, index) =>
                                            SizedBox(
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
                              widget.doctor.rating.toString(),
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
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Chúng tôi đã dựa vào lịch trình của chuyên gia để đặt lịch tư vấn cho bạn vào ${DateFormat('HH:mm dd/MM/yyyy').format(newTime)} ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(children: [
                    Text(
                      "Tổng số tiền phải thanh toán: ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "300.000VND",
                      style: TextStyle(
                        color: Color(0xff492497),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ])
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 30),
                decoration: BoxDecoration(
                  color: Color(0xffF3F6FD),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.3,
                      decoration: BoxDecoration(
                        color: Color(0xffC5C4C4),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextButton(
                        child: Text(
                          "Hủy".toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        color: Color(0xff492497),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextButton(
                        child: Text(
                          "Thanh toán".toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Calendar(
                                  bookingTime: newTime,
                                  name: widget.doctor.name),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
