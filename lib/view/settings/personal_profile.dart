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

class PersonalProfile extends StatefulWidget {
  static const routeName = 'change_user_password';

  const PersonalProfile({Key? key}) : super(key: key);

  @override
  State<PersonalProfile> createState() => _ChangePassWord();
}

class _ChangePassWord extends State<PersonalProfile> {
  @override
  void initState() {
    initUserData();
    _currentPassController.text = "mahmoud";
    _newPassController.text = "01019819443";
    _locationController.text = "القاهره";
    super.initState();
  }

  void initUserData() async {}

  final _currentPassController = TextEditingController();
  final _newPassController = TextEditingController();
  final _locationController = TextEditingController();
  late bool location = false;
  late bool name = false;
  late bool phone = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: AppColors.screenBackGround,
        appBar: AppBar(
            backgroundColor: AppColors.screenBackGround,
            shadowColor: Colors.black12,
            elevation: 0,
            automaticallyImplyLeading: false,
            flexibleSpace: AppBarWidgitCustom(name: "تعديل البيانات الشخصيه")),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomText(
                  text: 'اسم المستخدم',
                  fontSize: 13,
                  top: 30,
                  bottom: 0,
                  right: 15,
                  left: 15,
                  alignment: Alignment.centerRight,
                  fontFamily: "f700",
                ),
                Row(children: [
                  Expanded(
                    flex: 2,
                    child: CustomeTextFiled(
                      enabled: name,
                      top: 5,
                      right: 15,
                      left: 15,
                      hint: 'الاسم',
                      controller: _currentPassController,
                      prefixicon: Icon(Icons.perm_identity_outlined),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              name = !name;
                            });
                          },
                          child: CustomText(
                            text: "تعديل الاسم",
                            fontFamily: "f700",
                            fontSize: 14,
                            left: 15,
                            color: AppColors.bottonBackGround,
                          ))),
                ]),
                CustomText(
                  text: 'رقم الهاتف',
                  fontSize: 13,
                  top: 30,
                  bottom: 0,
                  right: 15,
                  left: 15,
                  alignment: Alignment.centerRight,
                  fontFamily: "f700",
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: CustomeTextFiled(
                        enabled: phone,
                        top: 5,
                        right: 15,
                        left: 15,
                        hint: 'رقم الهاتف',
                        controller: _newPassController,
                        prefixicon: Icon(Icons.phone_android_outlined),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: GestureDetector(
                            onTap: () {
                              setState(() {
                                phone = !phone;
                              });
                            },
                            child: CustomText(
                              text: "تعديل الهاتف",
                              fontFamily: "f700",
                              left: 15,
                              fontSize: 14,
                              color: AppColors.bottonBackGround,
                            ))),
                  ],
                ),
                CustomText(
                  text: 'العنوان',
                  fontSize: 13,
                  top: 30,
                  bottom: 0,
                  right: 15,
                  left: 15,
                  alignment: Alignment.centerRight,
                  fontFamily: "f700",
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: CustomeTextFiled(
                        enabled: phone,
                        top: 5,
                        right: 15,
                        left: 15,
                        hint: 'العنوان',
                        controller: _locationController,
                        prefixicon: Icon(Icons.location_on_outlined),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: GestureDetector(
                            onTap: () {
                              setState(() {
                                location = !location;
                              });
                            },
                            child: CustomText(
                              text: "تعديل العنوان",
                              fontFamily: "f700",
                              left: 15,
                              fontSize: 14,
                              color: AppColors.bottonBackGround,
                            ))),
                  ],
                ),
                CustomInkWell(
                    text: "تعديل الان ",
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
