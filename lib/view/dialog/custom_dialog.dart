import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

import '../../data/utiles/app_colors.dart';
import '../../data/utiles/app_image_path.dart';
import '../../data/utiles/app_style.dart';
import '../components/basic/custom_text.dart';


class CustomDialog extends StatefulWidget {
  String titel;
  String subTitel;

  CustomDialog({required this.titel, required this.subTitel});

  @override
  _CustomDialogState createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Card(
      elevation: 10,
      shadowColor: Colors.black.withOpacity(.10),
      shape: RoundedRectangleBorder(
        side: BorderSide(color:  Colors.white38, width: 1),
        borderRadius: BorderRadius.circular(30),
      ),
      color: AppColors.screenBackGround,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),

        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          // To make the card compact
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 10),),
            SvgPicture.asset(
              "${ImagesSvg.Customer_Survey}",
              height:70,
              width: 670,
              fit: BoxFit.fill,
            ),

            CustomText(
              alignment: Alignment.center,
              left: 10, right: 10,
            text:
                widget.titel,
                style:  AppStyleText.Text_400_13,
            ),
            SizedBox(height: 10.0),
            (widget.subTitel.isNotEmpty
                ?
            CustomText(
              alignment: Alignment.center,
              left: 10, right: 10,
              color: AppColors.colorC0E7D1Green,
              text:
              widget.subTitel,
              fontSize: 13,
              fontFamily: "f400",

            )


                : Container()),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
