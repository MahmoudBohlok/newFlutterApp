import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:newflutterapp/view/components/item_view/notification_item.dart';
import 'package:newflutterapp/view/components/item_view/setting_item.dart';
import 'package:newflutterapp/view/settings/notification_details.dart';
import '../../../data/utiles/app_colors.dart';
import '../../data/utiles/app_image_path.dart';
import '../../data/utiles/app_style.dart';
import '../components/basic/custom_text.dart';

class NotificationView extends StatefulWidget {

  const NotificationView({Key? key}) : super(key: key);

  @override
  State<NotificationView> createState() => _Folders();
}

class _Folders extends State<NotificationView>{


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenBackGround,
      body:Column(
        children: [
          Row(children: [
            Expanded(
              flex: 1,
              child: CustomText(
                  alignment: AlignmentDirectional.centerStart,
                  text: "الاشعارات",
                  right: 15,
                  style: AppStyleText.Text_700_15),
            ),
            CustomText(
                left: 15,

                alignment: AlignmentDirectional.centerEnd,
                text: "فلتر النتائج",
                color: AppColors.bottonBackGround,fontSize: 14,fontFamily: "f400"),
          ]),
          Expanded(
            child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  padding: EdgeInsets.only(top: 16),
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return GestureDetector(onTap:    () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return NotificationDetails(projectId: "projectId");
                      }));
                    },child: NotificationItem());
                  },
                )),
          ),
        ],
      )
    );
  }
}
