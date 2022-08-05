import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final IconData icon;
  final String? hint;
  final String? label;
  final String? errorText;
  final bool isObscure;
  final bool isIcon;
  final TextInputType? inputType;
  final TextEditingController textController;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final Color hintColor;
  final Color iconColor;
  final FocusNode? focusNode;
  final ValueChanged? onFieldSubmitted;
  final ValueChanged? onChanged;
  final bool autoFocus;
  final TextInputAction? inputAction;

  @override
  Widget build(BuildContext context) {
    List<Widget> listChildWidget = [
      Container(
        child: Expanded(
            child: TextFormField(
                controller: textController,
                focusNode: focusNode,
                onFieldSubmitted: onFieldSubmitted,
                onChanged: onChanged,
                autofocus: autoFocus,
                textInputAction: inputAction,
                obscureText: this.isObscure,
                maxLength: 25,
                keyboardType: this.inputType,
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16.0),
                decoration: InputDecoration(
                  hintText: this.hint,
                  hintStyle: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: hintColor),
                  errorText: errorText,
                  border: InputBorder.none,
                  counterText: '',
                  // icon: this.isIcon ? Icon(this.icon, color: iconColor) : null),
                ))),
      )
    ];
    if (this.isIcon) {
      listChildWidget.insert(0, SizedBox(width: 8));
      listChildWidget.insert(0, Icon(this.icon, color: iconColor));
    }
    return Container(
      decoration: BoxDecoration(
          color: (this.focusNode?.hasFocus ?? false)
              ? Theme.of(context).colorScheme.primaryContainer
              : Colors.transparent,
          border: Border.all(
              color: (this.focusNode?.hasFocus ?? false)
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.secondary),
          borderRadius: BorderRadius.circular(10)),
      margin: this.margin,
      child: Padding(
        padding: padding,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox.fromSize(
                  size: Size(30, 10),
                ),
                Align(
                  child: Text(
                    this.label ?? '',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color(0xFF828282), fontWeight: FontWeight.bold),
                  ),
                  alignment: Alignment.centerLeft,
                )
              ],
            ),
            Row(children: listChildWidget)
          ],
        ),
      ),
    );
  }

  const CustomTextFieldWidget({
    Key? key,
    required this.icon,
    required this.errorText,
    required this.textController,
    this.inputType,
    this.hint,
    this.isObscure = false,
    this.isIcon = true,
    this.padding = const EdgeInsets.all(0),
    this.hintColor = Colors.grey,
    this.iconColor = Colors.grey,
    this.focusNode,
    this.onFieldSubmitted,
    this.onChanged,
    this.autoFocus = false,
    this.inputAction,
    this.label,
    this.margin = const EdgeInsets.all(0),
  }) : super(key: key);
}
