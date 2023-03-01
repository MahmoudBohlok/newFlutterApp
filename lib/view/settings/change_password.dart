import 'package:flutter/material.dart';

import 'package:newflutterapp/view/components/basic/custom_text.dart';
import '../../data/utiles/app_colors.dart';
import '../components/app_bar/app_bar_widgit.dart';
import '../components/basic/custom_inkwell.dart';
import '../components/basic/custom_text_filed.dart';

class ChangePassWord extends StatefulWidget {

  const ChangePassWord({Key? key}) : super(key: key);

  @override
  State<ChangePassWord> createState() => _ChangePassWord();
}

class _ChangePassWord extends State<ChangePassWord> {
  @override
  void initState() {
    initUserData();

    super.initState();
  }

  void initUserData() async {}

  final _currentPassController = TextEditingController();
  final _newPassController = TextEditingController();
  final _newPass1Controller = TextEditingController();
  late bool connected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.screenBackGround,
        appBar: AppBar(
            backgroundColor: AppColors.screenBackGround,
            shadowColor: Colors.black12,
            elevation: 0,
            automaticallyImplyLeading: false,
            flexibleSpace: AppBarWidgitCustom(name: "تغير كلمه المرور")),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomText(text: 'كلمة المرور القديمه',fontSize: 13,top: 30,bottom: 0,right: 15,left: 15,alignment: Alignment.centerRight,fontFamily: "f700",),
                CustomePasswordFiled(
                  isObscure: true,
                  top: 5,
                  right: 15,
                  left: 15,
                  hint: 'كلمة المرور القديمه',
                  controller: _currentPassController,
                  prefixicon: Icon(Icons.lock_open_rounded),
                ),
                CustomText(text: 'كلمة المرور الجديدة',fontSize: 13,top: 15,bottom: 0,right: 15,left: 15,alignment: Alignment.centerRight,fontFamily: "f700"),
                CustomePasswordFiled(
                  isObscure: true,
                  top: 5,
                  right: 15,
                  left: 15,
                  hint: 'كلمة المرور الجديدة',
                  controller: _newPassController,
                  prefixicon: Icon(Icons.lock_open_rounded),
                ),
                CustomText(text:'تاكيد كلمة المرور الجديدة',fontSize: 13,top: 15,bottom: 0,right: 15,left: 15,alignment: Alignment.centerRight,fontFamily: "f700"),
                CustomePasswordFiled(
                  isObscure: true,
                  top: 5,
                  right: 15,
                  left: 15,
                  hint: 'تاكيد كلمة المرور الجديدة',
                  controller: _newPass1Controller,
                  prefixicon: Icon(Icons.lock_open_rounded),
                ),
                CustomInkWell(
                    text: "تعديل الان ",
                    color: AppColors.bottonBackGround,
                    fontColor: AppColors.screenBackGround,
                    fontSize: 20,
                    fontFamily: "f700",
                    right: 40,
                    left:40,
                    bottom: 15,
                    top: 40,
                    onTap: () {

                    }),
              ],
            ),
          ),
        ));
  }

}
