import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FABBottomAppBarItem {
  FABBottomAppBarItem(
      {required this.iconData,
      required this.iconDataSelected,
      required this.text});

  String iconData;
  String text;
  String iconDataSelected;
}

class FABBottomAppBar extends StatefulWidget {
  FABBottomAppBar(
      {required this.items,
      required this.centerItemText,
      this.height: 50.0,
      this.iconSize: 30.0,
      required this.backgroundColor,
      required this.color,
      required this.selectedColor,
      required this.notchedShape,
      required this.onTabSelected,
      required this.selectedIndex,
      required this.onItemTapped}) {
    assert(this.items.length == 2 || this.items.length == 4);
  }

  final List<FABBottomAppBarItem> items;
  final String centerItemText;
  final double height;
  final double iconSize;
  final Color backgroundColor;
  final Color color;
  final Color selectedColor;
  final NotchedShape notchedShape;
  final ValueChanged<int> onTabSelected;
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  @override
  State<StatefulWidget> createState() => FABBottomAppBarState();
}

class FABBottomAppBarState extends State<FABBottomAppBar> {
  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate(widget.items.length, (int index) {
      return _buildTabItem(
        item: widget.items[index],
        index: index,
        onPressed: widget.onItemTapped,
      );
    });
    items.insert(items.length >> 1, _buildMiddleTabItem());

    return BottomAppBar(
      shape: widget.notchedShape,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items,
      ),
      color: widget.backgroundColor,
    );
  }

  Widget _buildMiddleTabItem() {
    return Expanded(
      child: SizedBox(
        height: widget.height,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: widget.iconSize),
            Text(
              widget.centerItemText,
              style: TextStyle(color: widget.color),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabItem({
    required FABBottomAppBarItem item,
    required int index,
    required ValueChanged<int> onPressed,
  }) {
    String urlIcon =
        widget.selectedIndex == index ? item.iconDataSelected : item.iconData;
    Color color = widget.selectedIndex == index
        ? widget.selectedColor
        : Colors.transparent;
    return Expanded(
      child: SizedBox(
        height: widget.height,
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            splashColor: Colors.transparent,
            enableFeedback: false,
            onTap: () => onPressed(index),
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 12.0),
              decoration: BoxDecoration(
                border:
                    Border(top: BorderSide(width: 1.5, color: color)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SvgPicture.asset(
                    urlIcon,
                    height: 24.0,
                    width: 24.0,
                    allowDrawingOutsideViewBox: true,
                  )
                  // Text(
                  //   item.text,
                  //   style: TextStyle(color: color),
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
