import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../models/setting/setting.dart';

class SettingPages extends StatefulWidget {
  const SettingPages({Key? key}) : super(key: key);

  @override
  _SettingPagesState createState() => _SettingPagesState();
}

class _SettingPagesState extends State<SettingPages> {
  bool isSwitched = false;
  List<SettingModal> settings = [
    SettingModal(name: 'Tai khoan', icon: 'assets/icons/user_icon.svg'),
    SettingModal(name: 'Thong bao', icon: 'assets/icons/bell.svg'),
    SettingModal(name: 'Cai dat', icon: 'assets/icons/settings.svg'),
    SettingModal(
        name: 'Trung tam tro giup', icon: 'assets/icons/question_mark.svg'),
    // SettingModal(name: 'Dang xuat', icon: 'assets/icons/log_out.svg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: SizedBox(
            height: 115,
            width: 115,
            child: Stack(
              fit: StackFit.expand,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://us.123rf.com/450wm/fizkes/fizkes2010/fizkes201000740/157348848-narrow-wide-panoramic-view-headshot-portrait-of-smiling-african-american-young-woman-pose-at-home-ba.jpg?ver=6',
                      scale: 20),
                ),
                Positioned(
                  right: 140,
                  top: 70,
                  child: SizedBox(
                    height: 46,
                    width: 46,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                        side: BorderSide(color: Colors.white),
                      ),
                      color: Color(0xFFF5F6F9),
                      onPressed: () {},
                      child: Expanded(
                        flex: 1,
                        child: SvgPicture.asset(
                          'assets/icons/camera_icon.svg',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        ListView.builder(
          itemCount: settings.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: FlatButton(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Color(0xFFF5F6F9),
                onPressed: () {},
                child: Row(
                  children: [
                    SvgPicture.asset(
                      settings[index].icon,
                      width: 22,
                      color: Colors.purple,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        settings[index].name,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.purple,
                    )
                  ],
                ),
              ),
            );
          },
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: FlatButton(
            padding: EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Color(0xFFF5F6F9),
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.dark_mode,
                  color: Colors.purple,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    'Che do ban dem',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                      print(isSwitched);
                    });
                  },
                  activeTrackColor: Colors.purple[100],
                  activeColor: Colors.purple,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: FlatButton(
            padding: EdgeInsets.all(20),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Colors.grey[300],
            onPressed: () {},
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/log_out.svg',
                  width: 22,
                  color: Colors.purple,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    'Dang xuat',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
