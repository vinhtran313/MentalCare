import './dialUser.dart';
import './roundedButton.dart';
import '../constant.dart';
import '../sizeConfig.dart';
import 'package:flutter/material.dart';

import './dialButton.dart';

class Body extends StatefulWidget {
  VoidCallback press;
  String image;

  Body({
    required this.press,
    required this.image,
  });

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Anna williams",
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(color: Colors.white),
            ),
            Text(
              "Calling…",
              style: TextStyle(color: Colors.white60),
            ),
            VerticalSpacing(),
            DialUserPic(image: widget.image),
            Spacer(),
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                DialButton(
                  iconSrc: "assets/icons/Icon Mic.svg",
                  text: "Audio",
                  press: () {},
                ),
                DialButton(
                  iconSrc: "assets/icons/Icon Volume.svg",
                  text: "Microphone",
                  press: () {},
                ),
                DialButton(
                  iconSrc: "assets/icons/Icon Video.svg",
                  text: "Video",
                  press: () {},
                ),
                DialButton(
                  iconSrc: "assets/icons/Icon Message.svg",
                  text: "Message",
                  press: () {},
                ),
                DialButton(
                  iconSrc: "assets/icons/Icon User.svg",
                  text: "Add contact",
                  press: () {},
                ),
                DialButton(
                  iconSrc: "assets/icons/Icon Voicemail.svg",
                  text: "Voice mail",
                  press: () {},
                ),
              ],
            ),
            VerticalSpacing(),
            RoundedButton(
              iconSrc: "assets/icons/call_end.svg",
              press: widget.press,
              color: kRedColor,
              iconColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
