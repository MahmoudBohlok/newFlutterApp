import 'package:flutter/material.dart';
import 'package:newflutterapp/data/utiles/app_colors.dart';
import '../../../data/utiles/app_style.dart';
import '../basic/custom_text.dart';

class MySettingItem extends StatelessWidget {
  String text;
  String icon;

  MySettingItem(this.text, this.icon);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Padding(
            padding: EdgeInsets.only(top: 0, bottom:0, right: 10, left: 10),
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),





                  Container( // or ClipRRect if you need to clip the content
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.colorC0E7D1Green, // inner circle color
                    ),
                    child:
                 Padding(padding:EdgeInsets.all(8) ,
                   child:Image.asset(icon,fit: BoxFit.fill,)
                 ),
                  width: 40,
                  height: 40,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 2,
                  child: //SizedBox
                    CustomText(left: 10, right: 10,
                        alignment: AlignmentDirectional.centerStart,
                      text:  text,
                      style:
                      AppStyleText.Text_400_13,
                  ),
                ),
                const SizedBox(width: 15),
              ],
            ));
  }
}
