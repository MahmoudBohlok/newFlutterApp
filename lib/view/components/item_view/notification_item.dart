import 'package:flutter/material.dart';
import 'package:newflutterapp/data/utiles/app_colors.dart';
import 'package:newflutterapp/view/components/basic/custom_text.dart';

import '../../../data/utiles/app_style.dart';


class NotificationItem extends StatefulWidget {

  NotificationItem(
     );

  @override
  _ConversationListState createState() => _ConversationListState();
}

class _ConversationListState extends State<NotificationItem> {
  @override
  Widget build(BuildContext context) {
    return   Card(
      color: AppColors.colorF6F6F6,
        elevation: 5,
        shadowColor: Colors.black.withOpacity(.30),
    shape: RoundedRectangleBorder(
    side: BorderSide(color: Colors.black.withOpacity(.02), width: 1),
    borderRadius: BorderRadius.circular(15),
    ),
    margin:
    const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
    child:  Container(
      padding: EdgeInsets.only(left: 15, right: 15, bottom: 15,top: 15),
      child:Column(
          children: <Widget>[
            Row(children: [
              Expanded(
                flex: 1,
                child: CustomText(
                    alignment: AlignmentDirectional.centerStart,
                    text: "تحويل اموال",
                    style: AppStyleText.Text_700_15),
              ),
      Container( alignment: AlignmentDirectional.centerEnd,
        child: Row(children: [
          Icon(Icons.date_range,color: AppColors.textHint),
          CustomText(
                    alignment: AlignmentDirectional.centerEnd,
                    text: "23/2/2023",
                    style: AppStyleText.Text_400_11),
              ]),
      ),
            ]),
            CustomText(
              alignment: AlignmentDirectional.centerStart,
              top: 2,
              maxLine: 2,
              text: "تم تحويل مبلغ نقدري اللي الحساب 00000000",
              style: AppStyleText.Text_400_11,
            ),
            CustomText(
              alignment: AlignmentDirectional.centerEnd,
              top: 2,
              maxLine: 1,
              color: AppColors.bottonBackGround,
              text: "المزيد",
            fontSize: 11,
              fontFamily: "f800",
            ),
          ],
        ),
        ),

    );
  }
}
