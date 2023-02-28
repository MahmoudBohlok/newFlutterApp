import 'package:flutter/material.dart';
import 'package:newflutterapp/view/components/app_bar/app_bar_widgit_without_back.dart';
import 'package:newflutterapp/view/components/item_view/setting_item.dart';
import 'package:newflutterapp/view/settings/services.dart';
import '../../../data/utiles/app_colors.dart';
import '../../data/utiles/app_image_path.dart';
import '../../data/utiles/app_style.dart';
import '../components/app_bar/app_bar_widgit.dart';
import '../components/basic/custom_inkwell.dart';
import '../components/basic/custom_text.dart';
import '../components/basic/custom_text_filed.dart';
import 'NotificationView.dart';
import 'SettingView.dart';

class NotificationDetails extends StatefulWidget {
  final String projectId;

  const NotificationDetails({Key? key, required this.projectId}) : super(key: key);

  @override
  State<NotificationDetails> createState() => _Folders();
}

class _Folders extends State<NotificationDetails>  {

  final _message = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: AppColors.screenBackGround,
            onPressed: () {

            },
            child:     Padding(padding:EdgeInsets.all(8) ,
                child:Image.asset( Images.customer_support,fit: BoxFit.fill,)
            ),
          ),
        appBar: AppBar(
            backgroundColor: AppColors.screenBackGround,
            shadowColor: Colors.black12,
            elevation: 0,
            automaticallyImplyLeading: false,
            flexibleSpace: AppBarWidgitCustom(name: "الاشعارات")),
        body:

        Column(
          children: [
            Card(
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
                      textAlign: TextAlign.center,
                      top: 2,

                      text: "تم تحويل مبلغ نقدري اللي الحساب تم تحويل مبلغ نقدري اللي الحساب 00000000تم تحويل مبلغ نقدري اللي الحساب تم تحويل مبلغ نقدري اللي الحساب 00000000",
                      style: AppStyleText.Text_400_11,
                    ),

                  ],
                ),
              ),

            ),
            CustomeTextFiled(
              top: 5,
              right: 15,
              left: 15,
              fontSize: 10,
              hint: 'ادخل عنوان النشاط',
              controller: _message,
              prefixicon: Icon(Icons.message_rounded),
            ),
            CustomInkWell(
                text: "ارسال رد",
                color: AppColors.bottonBackGround,
                fontColor: AppColors.screenBackGround,
                fontSize: 20,
                fontFamily: "f700",
                right: 40,
                left: 40,
                bottom: 15,
                top: 40,
                onTap: () {}),
          ],
        )

      ),
    );
  }
}
