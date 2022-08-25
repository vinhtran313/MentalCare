import './constant.dart';
import './sizeConfig.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class DialScreen extends StatelessWidget {
  const DialScreen({Key? key, required this.press, required this.image})
      : super(key: key);

  final VoidCallback press;
  final String image;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBackgoundColor,
      body: Body(press: press, image: image),
    );
  }
}
