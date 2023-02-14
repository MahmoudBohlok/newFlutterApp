import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomTextAction extends StatelessWidget {
  const CustomTextAction(
      {Key? key,
      required this.text,
      this.color,
      this.fontSize,
      this.fontColor,
      this.onTap,
      this.fontFamily,
      this.left,
      this.right,
      this.top,
      this.bottom,
      this.alignment,
      })
      : super(key: key);
  final String text;
  final Color? color;
  final Function()? onTap;
  final double? fontSize;
  final double? left;
  final double? right;
  final double? top; final double? bottom;
  final AlignmentGeometry? alignment;

  final Color? fontColor;
  final String? fontFamily;

  @override
  Widget build(BuildContext context) {
    return          Container(
      alignment: alignment??Alignment.center,
      margin:  EdgeInsets.only(
          left: left??0, right: right??0, top: top??0, bottom: bottom??0),
      child: InkWell(

        onTap: onTap,
        child: CustomText(
text:
          "نسيت كلمة المرور ؟",
          style: TextStyle(

              fontSize: fontSize??16,
              color: fontColor,
              fontFamily:fontFamily?? "f400"),
        ),
      ),
    );
  }
}
