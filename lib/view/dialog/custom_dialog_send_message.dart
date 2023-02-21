import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

import '../../data/utiles/app_colors.dart';
import '../../data/utiles/app_image_path.dart';
import '../../data/utiles/app_style.dart';
import '../components/basic/custom_inkwell.dart';
import '../components/basic/custom_text.dart';
import '../components/basic/custom_text_filed.dart';


class CustomDialogSendMessage extends StatefulWidget {


  CustomDialogSendMessage();

  @override
  _CustomDialogState createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialogSendMessage> {  final _locationController = TextEditingController();

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
            CustomText(
              text: 'التواصل مع السائق مباشر',
              fontSize: 13,
              top: 30,
              bottom: 0,
              right: 15,
              left: 15,
              alignment: Alignment.centerRight,
              fontFamily: "f700",
            ),
            CustomeTextFiled(
              top: 5,
              maxline: 5,
              right: 15,
              left: 15,
              hint: 'الرساله',
              controller: _locationController,
              prefixicon: Icon(Icons.message_rounded),
            ),


            CustomInkWell(
                text: " تاكيد ",
                color: AppColors.bottonBackGround,
                fontColor: AppColors.screenBackGround,
                fontSize: 20,
                fontFamily: "f700",
                right: 40,
                left: 40,
                bottom: 15,
                top: 40,
                onTap: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
