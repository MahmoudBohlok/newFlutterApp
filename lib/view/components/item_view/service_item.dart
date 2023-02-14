import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newflutterapp/data/utiles/app_colors.dart';
import 'package:newflutterapp/view/components/basic/custom_text.dart';

class ServicesItem extends StatelessWidget {
  String text;

  String icon;

  ServicesItem(this.text, this.icon);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisSize:MainAxisSize.min,
      children: [
        Card(
            elevation: 30,
            shadowColor: Colors.black.withOpacity(.30),
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.black.withOpacity(.10), width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            margin:
                const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
            child: Container(
              height: 70,width: 70,
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
                child: Image.asset(icon))),
        CustomText(
          text: "الخدمه",
          alignment: Alignment.center,
          fontSize: 16,fontFamily: "f400",
        )
      ],
    );
  }
}
