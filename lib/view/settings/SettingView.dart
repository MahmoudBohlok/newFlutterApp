import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:newflutterapp/view/components/item_view/setting_item.dart';
import '../../../data/utiles/app_colors.dart';
import '../../data/utiles/app_image_path.dart';
import '../../data/utiles/app_style.dart';
import '../components/basic/custom_text.dart';

class SettingView extends StatefulWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  State<SettingView> createState() => _Folders();
}

class _Folders extends State<SettingView> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.screenBackGround,
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 15)),
                MySettingItem("تحديث الملف الشخصي", Images.digital_wallet),
                Divider(color: AppColors.textcolor),
                MySettingItem(
                    "انشاء رقم سري للمدفوعات", Images.customer_support),
                Divider(color: AppColors.textcolor),
                MySettingItem("رفع الفاتوره", Images.customer_support),
                Divider(color: AppColors.textcolor),
                MySettingItem("المنتجات", Images.receipt),
                Divider(color: AppColors.textcolor),
                MySettingItem("مواصلات حارث", Images.delivery_car),
                Divider(color: AppColors.textcolor),
                MySettingItem("اسئله مهمه", Images.customer_support),
                Divider(color: AppColors.textcolor),
                MySettingItem("الاتصال بالدعم", Images.customer_support),
                Divider(color: AppColors.textcolor),
                MySettingItem("تغير الرقم السري", Images.customer_support),
                Divider(color: AppColors.textcolor),
                MySettingItem("البصمه", Images.fingerprint),
                Divider(color: AppColors.textcolor),
                MySettingItem("تسجيل الخروج", Images.customer_support),
                Divider(color: AppColors.textcolor),
                Padding(padding: EdgeInsets.only(top: 50))
              ],
            ),
          ),
        ));
  }
}
