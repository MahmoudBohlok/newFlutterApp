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
import 'edit_ltinerary.dart';

class Itinerary extends StatefulWidget {
  static const routeName = 'change_user_password';

  const Itinerary({Key? key}) : super(key: key);

  @override
  State<Itinerary> createState() => _ChangePassWord();
}

class _ChangePassWord extends State<Itinerary> {
  @override
  void initState() {
    initUserData();
    // _currentPassController.text = "القاهره";
    // _newPassController.text = "الجيزه";
    // _locationController.text = "10";
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
            flexibleSpace: AppBarWidgitCustom(name: "سجل خط سير طريقك")),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CustomText(
                  text: 'من',
                  fontSize: 13,
                  top: 30,
                  bottom: 0,
                  right: 15,
                  left: 15,
                  alignment: Alignment.centerRight,
                  fontFamily: "f700",
                ),
              CustomeTextFiled(
                      enabled: name,
                      top: 5,
                      right: 15,
                      left: 15,
                      hint: 'من',
                      controller: _currentPassController,
                      prefixicon: Icon(Icons.location_on_outlined),
                    ),

                const CustomText(
                  text: 'الي',
                  fontSize: 13,
                  top: 30,
                  bottom: 0,
                  right: 15,
                  left: 15,
                  alignment: Alignment.centerRight,
                  fontFamily: "f700",
                ),
               CustomeTextFiled(
                        enabled: phone,
                        top: 5,
                        right: 15,
                        left: 15,
                        hint: 'الي',
                        controller: _newPassController,
                        prefixicon: Icon(Icons.location_on_outlined),
                      ),

                const CustomText(
                  text: 'المبلغ',
                  fontSize: 13,
                  top: 30,
                  bottom: 0,
                  right: 15,
                  left: 15,
                  alignment: Alignment.centerRight,
                  fontFamily: "f700",
                ),
              CustomeTextFiled(
                        enabled: phone,
                        top: 5,
                        right: 15,
                        left: 15,
                        hint: 'المبلغ',
                        controller: _locationController,
                        prefixicon: Icon(Icons.monetization_on_outlined),
                      ),

                CustomInkWell(
                    text: "حفظ",
                    color: AppColors.bottonBackGround,
                    fontColor: AppColors.screenBackGround,
                    fontSize: 20,
                    fontFamily: "f700",
                    right: 40,
                    left: 40,
                    bottom: 40,
                    top: 40,
                    onTap: () {}),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return EditItinerary();
                    }));
                  },
                  child: const CustomText(
                    text: 'محفوظات خط السير',
                    fontSize: 15,
                    top: 30,
                    bottom: 20,
                    right: 15,
                    left: 15,
                    color: AppColors.colorC0E7D1Green,
                    alignment: Alignment.center,
                    fontFamily: "f400",
                  ),
                ),
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
