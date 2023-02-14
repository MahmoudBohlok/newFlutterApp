import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../data/utiles/app_colors.dart';
import '../../../data/utiles/app_image_path.dart';
import '../../../data/utiles/app_style.dart';
import '../basic/custom_text.dart';

class AppBarWidgitCustom extends StatefulWidget {
  String name;
  AppBarWidgitCustom({
    required this.name,
  });

  @override
  _AppBarWidgitCustomeState createState() => _AppBarWidgitCustomeState();
}

class _AppBarWidgitCustomeState extends State<AppBarWidgitCustom> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: CustomText(text:
                widget.name,style:
              AppStyleText.Text_700_20,
              ),
            ),
        Card(
          elevation: 15,
          shadowColor: Colors.black.withOpacity(.10),
          color: AppColors.colorC0E7D1Green ,
          shape: RoundedRectangleBorder(
            side: BorderSide(color:  AppColors.colorC0E7D1Green, width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
          child: Container(
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon:
                Icon(Icons.arrow_back_ios_rounded,
                  color: AppColors.bottonBackGround,
                 )

                // SvgPicture.asset(
                //   "${IconSvg.back}",
                //   height: 20,
                //   width: 20,
                //
                //   fit: BoxFit.fill,
                // ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
