import 'package:boilerplate/ui/doctors/list_doctor.dart';
import 'package:boilerplate/ui/purchase/purchase.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BookingDoctor extends StatefulWidget {
  const BookingDoctor({Key? key, required this.doctor}) : super(key: key);

  final DoctorItem doctor;

  @override
  State<BookingDoctor> createState() => _BookingDoctorState();
}

enum Anonymous { yes, no }

enum Sex { male, female }

class _BookingDoctorState extends State<BookingDoctor> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController ageController = new TextEditingController();
  TextEditingController addressController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController issueController = new TextEditingController();
  bool nameFocus = false;
  bool ageFocus = false;
  bool addressFocus = false;
  bool phoneFocus = false;
  bool issueFocus = false;
  Anonymous? _anonymous = Anonymous.no;
  Sex? _sex = Sex.male;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3F6FD),
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color(0xff492497),
        ),
        title: Text(
          "Đặt lịch",
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
      body: Stack(
        children: [
          SingleChildScrollView(
            child: SafeArea(
              child: Container(
                padding: EdgeInsets.fromLTRB(30, 30, 30, 100),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                      decoration: BoxDecoration(
                        color: (nameFocus)
                            ? Color(0xffE1DEFA)
                            : Colors.transparent,
                        border: Border.all(
                          color: (nameFocus)
                              ? Color(0xff492497)
                              : Color.fromRGBO(0, 0, 0, 0.2),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(children: [
                        Row(
                          children: [
                            SizedBox.fromSize(
                              size: Size(33, 0),
                            ),
                            Align(
                              child: Text(
                                "Họ và tên",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xFF828282),
                                    fontWeight: FontWeight.bold),
                              ),
                              alignment: Alignment.centerLeft,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.access_alarm),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Expanded(
                                child: Focus(
                                  onFocusChange: (hasFocus) {
                                    if (hasFocus) {
                                      setState(() {
                                        nameFocus = true;
                                      });
                                    } else {
                                      setState(() {
                                        nameFocus = false;
                                      });
                                    }
                                  },
                                  child: TextFormField(
                                    controller: nameController,
                                    autofocus: true,
                                    decoration: InputDecoration(
                                      hintText: 'Điền vào tên của bạn',
                                      hintStyle: TextStyle(
                                        color: (nameFocus)
                                            ? Colors.black
                                            : Color(0xff828282),
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      border: InputBorder.none,
                                      counterText: '',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          color: Color.fromRGBO(0, 0, 0, 0.2),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox.fromSize(
                                size: Size(33, 0),
                              ),
                              Align(
                                child: Text(
                                  "Ẩn danh",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color(0xFF828282),
                                      fontWeight: FontWeight.bold),
                                ),
                                alignment: Alignment.centerLeft,
                              )
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: [
                              Icon(Icons.access_alarm),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                child: Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 20,
                                            height: 20,
                                            child: Radio<Anonymous>(
                                              value: Anonymous.no,
                                              groupValue: _anonymous,
                                              onChanged: (Anonymous? value) {
                                                setState(() {
                                                  _anonymous = value;
                                                });
                                              },
                                              fillColor:
                                                  MaterialStateProperty.all(
                                                Color(0xff492497),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text("Không"),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 20,
                                            height: 20,
                                            child: Radio<Anonymous>(
                                              value: Anonymous.yes,
                                              groupValue: _anonymous,
                                              onChanged: (Anonymous? value) {
                                                setState(() {
                                                  _anonymous = value;
                                                });
                                              },
                                              fillColor:
                                                  MaterialStateProperty.all(
                                                Color(0xff492497),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text("Có"),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                      decoration: BoxDecoration(
                        color:
                            (ageFocus) ? Color(0xffE1DEFA) : Colors.transparent,
                        border: Border.all(
                          color: (ageFocus)
                              ? Color(0xff492497)
                              : Color.fromRGBO(0, 0, 0, 0.2),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox.fromSize(
                                size: Size(33, 0),
                              ),
                              Align(
                                child: Text(
                                  "Tuổi",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color(0xFF828282),
                                      fontWeight: FontWeight.bold),
                                ),
                                alignment: Alignment.centerLeft,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.access_alarm),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                child: Expanded(
                                  child: Focus(
                                    onFocusChange: (hasFocus) {
                                      if (hasFocus) {
                                        setState(() {
                                          ageFocus = true;
                                        });
                                      } else {
                                        setState(() {
                                          ageFocus = false;
                                        });
                                      }
                                    },
                                    child: TextFormField(
                                      controller: ageController,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        hintText: 'Điền vào tuổi của bạn',
                                        hintStyle: TextStyle(
                                          color: (ageFocus)
                                              ? Colors.black
                                              : Color(0xff828282),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        border: InputBorder.none,
                                        counterText: '',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          color: Color.fromRGBO(0, 0, 0, 0.2),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox.fromSize(
                                size: Size(33, 0),
                              ),
                              Align(
                                child: Text(
                                  "Giới tính",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color(0xFF828282),
                                      fontWeight: FontWeight.bold),
                                ),
                                alignment: Alignment.centerLeft,
                              )
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: [
                              Icon(Icons.access_alarm),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                child: Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 20,
                                            height: 20,
                                            child: Radio<Sex>(
                                              value: Sex.male,
                                              groupValue: _sex,
                                              onChanged: (Sex? value) {
                                                setState(() {
                                                  _sex = value;
                                                });
                                              },
                                              fillColor:
                                                  MaterialStateProperty.all(
                                                Color(0xff492497),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text("Nam"),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 70,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 20,
                                            height: 20,
                                            child: Radio<Sex>(
                                              value: Sex.female,
                                              groupValue: _sex,
                                              onChanged: (Sex? value) {
                                                setState(() {
                                                  _sex = value;
                                                });
                                              },
                                              fillColor:
                                                  MaterialStateProperty.all(
                                                Color(0xff492497),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text("Nữ"),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                      decoration: BoxDecoration(
                        color: (addressFocus)
                            ? Color(0xffE1DEFA)
                            : Colors.transparent,
                        border: Border.all(
                          color: (addressFocus)
                              ? Color(0xff492497)
                              : Color.fromRGBO(0, 0, 0, 0.2),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox.fromSize(
                                size: Size(33, 0),
                              ),
                              Align(
                                child: Text(
                                  "Địa chỉ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color(0xFF828282),
                                      fontWeight: FontWeight.bold),
                                ),
                                alignment: Alignment.centerLeft,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.access_alarm),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                child: Expanded(
                                  child: Focus(
                                    onFocusChange: (hasFocus) {
                                      if (hasFocus) {
                                        setState(() {
                                          addressFocus = true;
                                        });
                                      } else {
                                        setState(() {
                                          addressFocus = false;
                                        });
                                      }
                                    },
                                    child: TextFormField(
                                      controller: addressController,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        hintText: 'Điền vào địa chỉ của bạn',
                                        hintStyle: TextStyle(
                                          color: (addressFocus)
                                              ? Colors.black
                                              : Color(0xff828282),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        border: InputBorder.none,
                                        counterText: '',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                      decoration: BoxDecoration(
                        color: (phoneFocus)
                            ? Color(0xffE1DEFA)
                            : Colors.transparent,
                        border: Border.all(
                          color: (phoneFocus)
                              ? Color(0xff492497)
                              : Color.fromRGBO(0, 0, 0, 0.2),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox.fromSize(
                                size: Size(33, 0),
                              ),
                              Align(
                                child: Text(
                                  "Số điện thoại",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color(0xFF828282),
                                      fontWeight: FontWeight.bold),
                                ),
                                alignment: Alignment.centerLeft,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.access_alarm),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                child: Expanded(
                                  child: Focus(
                                    onFocusChange: (hasFocus) {
                                      if (hasFocus) {
                                        setState(() {
                                          phoneFocus = true;
                                        });
                                      } else {
                                        setState(() {
                                          phoneFocus = false;
                                        });
                                      }
                                    },
                                    child: TextFormField(
                                      controller: phoneController,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        hintText: 'VD: 0123456789',
                                        hintStyle: TextStyle(
                                          color: (phoneFocus)
                                              ? Colors.black
                                              : Color(0xff828282),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        border: InputBorder.none,
                                        counterText: '',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                      decoration: BoxDecoration(
                        color: (issueFocus)
                            ? Color(0xffE1DEFA)
                            : Colors.transparent,
                        border: Border.all(
                          color: (issueFocus)
                              ? Color(0xff492497)
                              : Color.fromRGBO(0, 0, 0, 0.2),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox.fromSize(
                                size: Size(33, 0),
                              ),
                              Align(
                                child: Text(
                                  "Mô tả sơ bộ vấn đề",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color(0xFF828282),
                                      fontWeight: FontWeight.bold),
                                ),
                                alignment: Alignment.centerLeft,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.access_alarm),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                child: Expanded(
                                  child: Focus(
                                    onFocusChange: (hasFocus) {
                                      if (hasFocus) {
                                        setState(() {
                                          issueFocus = true;
                                        });
                                      } else {
                                        setState(() {
                                          issueFocus = false;
                                        });
                                      }
                                    },
                                    child: TextFormField(
                                      controller: issueController,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        hintText: 'Mô tả vấn đề của bạn...',
                                        hintStyle: TextStyle(
                                          color: (issueFocus)
                                              ? Colors.black
                                              : Color(0xff828282),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        border: InputBorder.none,
                                        counterText: '',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
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
                        "Đặt lịch".toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                PurchaseScreen(doctor: widget.doctor),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
