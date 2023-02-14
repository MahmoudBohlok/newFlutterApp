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

class ChangePassWord extends StatefulWidget {
  static const routeName = 'change_user_password';

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
  bool _isObscure2 = true, _isObscure = true, _isObscure3 = true;
  final _formKey = GlobalKey<FormState>();
  late String _userPass;

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
// validation() {
//
//   List<TextEditingController> _TextEditingControllerlist = [
//     _newPassController,
//     _newPass1Controller,_currentPassController
//   ];
//   if (!Validation.validateNotEmpty(_TextEditingControllerlist)) {
//     HelperMethod.SnackBarWidget(context, "لابد من اكتمال جميع الحقول", Colors.red);
//     return;
//   }
//
//   if (!Validation.validatePassword(_newPassController)) {
//     HelperMethod.SnackBarWidget(context, "كلمه المرور قصيره جدا ", Colors.red);
//     return;
//   }
//   if (!Validation.validateCurrentPassword(_currentPassController,_userPass)) {
//     HelperMethod.SnackBarWidget(context, "كلمه المرورغير متطابقه ", Colors.red);
//     return;
//   }
//   if (!Validation.validateConFirmePassword(_newPassController,_newPass1Controller)) {
//     HelperMethod.SnackBarWidget(context, "كلمه المرورغير متطابقه ", Colors.red);
//     return;
//   }
//
//  apiCall();
//
//
// }

// apiCall() async {
//   if (_formKey.currentState!.validate()) {
//     HelperMethod.SnackBarWidget(context,   "جاري تعديل البيانات",Colors.green.shade300);
//     await UserCubit.get(context).updatePassword(
//         old_password: _currentPassController.text,
//         new_password: _newPassController.text,
//         new_password_confirmation: _newPass1Controller.text);
//   }
// }

// diloge() async {
//   showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         //
//         return CustomDialog(
//             titel: "تهانينا", subTitel: " تم تغير كلمة المرور بنجاح");
//       });
//   await Future.delayed(const Duration(milliseconds: 2000), () {
//     // Navigator.pop(context);
//     Navigator.of(context).push(MaterialPageRoute(builder: (co) {
//       return Home();
//     }));
//   });
// }
}
