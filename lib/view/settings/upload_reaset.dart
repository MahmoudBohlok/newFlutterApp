import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newflutterapp/view/components/basic/custom_text.dart';
import '../../../main.dart';
import '../../data/utiles/app_colors.dart';
import '../components/app_bar/app_bar_widgit.dart';
import '../components/basic/custom_inkwell.dart';
import '../components/basic/custom_text_filed.dart';

class UplaodReset extends StatefulWidget {

  const UplaodReset({Key? key}) : super(key: key);

  @override
  State<UplaodReset> createState() => _ChangePassWord();
}

class _ChangePassWord extends State<UplaodReset> {
  @override
  void initState() {
    initUserData();

    super.initState();
  }

  void initUserData() async {}

  final _currentPassController = TextEditingController();
  final _newPassController = TextEditingController();
  final _newPass1Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.screenBackGround,
        appBar: AppBar(
            backgroundColor: AppColors.screenBackGround,
            shadowColor: Colors.black12,
            elevation: 0,
            automaticallyImplyLeading: false,
            flexibleSpace: AppBarWidgitCustom(name: "رفع الفاتوره")),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomeTextFiled(
                  top: 15,
                  right: 15,
                  left: 15,
                  hint: 'اسم المحل',
                  controller: _currentPassController,
                ),
                CustomeTextFiled(
                  top: 15,
                  right: 15,
                  left: 15,
                  hint: 'حساب المحل',
                  controller: _newPassController,
                ),
                CustomeTextFiled(
                  top: 15,
                  right: 15,
                  left: 15,
                  hint: 'عنوان المحل',
                  controller: _newPass1Controller,
                ),    CustomeTextFiled(
                  top: 15,
                  right: 15,
                  left: 15,
                  hint: 'المبلغ',
                  controller: _newPass1Controller,
                ),CustomeTextFiled(
                  maxline: 4,
                  top: 15,
                  right: 15,
                  left: 15,
                  hint: 'تفاصيل الفاتوره',
                  controller: _newPass1Controller,
                ),CustomeTextFiled(
                  maxline: 4,
                  top: 15,
                  right: 15,
                  left: 15,
                  hint: 'اجمالي المبلغ',
                  controller: _newPass1Controller,
                ),
                CustomInkWell(
                    text: "حفظ",
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
