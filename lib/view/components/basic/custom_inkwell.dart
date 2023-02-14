import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../data/utiles/app_colors.dart';
import 'custom_text.dart';

class CustomInkWell extends StatelessWidget {
  const CustomInkWell(
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
      })
      : super(key: key);
  final String text;
  final Color? color;
  final Function()? onTap;
  final double? fontSize;
  final double? left;
  final double? right;
  final double? top;
  final double? bottom;
  final Color? fontColor;
  final String? fontFamily;

  @override
  Widget build(BuildContext context) {
    return          Container(
      margin:  EdgeInsets.only(
          left: left??0, right: right??0, top: top??0, bottom: bottom??0),
      child: InkWell(

        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.06,
          decoration:  BoxDecoration(
              color:color,
              borderRadius:
              BorderRadius.all(Radius.circular(5))),
          child:  Center(
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: fontFamily,
                  color: fontColor),
            ),
          ),
        ),
      ),
    );
  }
}
class CustomInkWellWithIcon extends StatelessWidget {
  const CustomInkWellWithIcon(
      {Key? key,
      required this.text,
      this.color,
      this.fontSize,
      this.fontColor,
      this.onTap,
      this.fontFamily,
      this.left,
      this.imagePath,
      this.right,
      this.hight,
      this.isIcon,
      this.top,
      this.bottom,
      })
      : super(key: key);
  final String text;
  final Color? color;
  final Function()? onTap;
  final double? fontSize;
  final double? left;
  final double? right;
  final double? hight;
  final bool? isIcon;
  final double? top;
  final double? bottom;
  final String? imagePath;
  final Color? fontColor;
  final String? fontFamily;

  @override
  Widget build(BuildContext context) {
    return          Container(
      margin:  EdgeInsets.only(
          left: left??0, right: right??0, top: top??0, bottom: bottom??0),
      child: InkWell(

        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height:hight?? MediaQuery.of(context).size.height * 0.06,
          decoration:  BoxDecoration(
              color:  color ?? AppColors.bottonBackGround,
              borderRadius:
              BorderRadius.all(Radius.circular(10))),
          child:  Center(
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(imagePath!??"",color:Colors.white ,),

                CustomText(
                    right: 8,
                    text: text,
                    color:fontColor?? Colors.white,
                    maxLine: 1,
                    overflow: TextOverflow.ellipsis,
                    fontFamily:fontFamily?? 'f400',
                    textAlign: TextAlign.center,
                    height: 1,
                    fontSize: fontSize),

              ],
            )



          ),
        ),
      ),
    );
  }
}
