import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newflutterapp/view/components/basic/custom_text.dart';
import 'package:newflutterapp/view/dialog/custom_dialog_send_message.dart';
import '../../../main.dart';
import '../../data/utiles/app_colors.dart';
import '../../data/utiles/app_image_path.dart';
import '../../data/utiles/app_style.dart';
import '../components/app_bar/app_bar_widgit.dart';
import '../components/basic/custom_inkwell.dart';
import '../components/basic/custom_text_filed.dart';

class Transport extends StatefulWidget {
  static const routeName = 'change_user_password';

  const Transport({Key? key}) : super(key: key);

  @override
  State<Transport> createState() => _ChangePassWord();
}

class _ChangePassWord extends State<Transport> {
  @override
  void initState() {
    initUserData();
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
            flexibleSpace: AppBarWidgitCustom(name: "مواصلات حارث")),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
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
                            child:Image.asset(Images.delivery_car,fit: BoxFit.fill,)
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
                        CustomText(
                          alignment: Alignment.centerRight,
                          text: "تابع الرحله",
                          fontFamily: "f700",
                          fontSize: 14,
                          left: 15,
                          color: AppColors.bottonBackGround,
                        ),
                      ),
                      const SizedBox(width: 15),
                    ],
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(15),
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
                            child:Image.asset(Images.delivery_car,fit: BoxFit.fill,)
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
                        CustomText(
                          alignment: Alignment.centerRight,
                          text: "تابع الشحنه",
                          fontFamily: "f700",
                          left: 15,
                          fontSize: 14,
                          color: AppColors.bottonBackGround,
                        )
                      ),
                      const SizedBox(width: 15),
                    ],
                  ),
                ),


                GestureDetector(
                 onTap: (){

                   diloge();

                 },
                  child: Padding(
                    padding: const EdgeInsets.all(15),
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
                              child:Image.asset(Images.delivery_car,fit: BoxFit.fill,)
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
                          CustomText(
                            alignment: Alignment.centerRight,
                            text: "التواصل مع السائق مباشر",
                            fontFamily: "f700",
                            fontSize: 14,
                            left: 15,
                            color: AppColors.bottonBackGround,
                          ),
                        ),
                        const SizedBox(width: 15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
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
                            child:Image.asset(Images.delivery_car,fit: BoxFit.fill,)
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
                        CustomText(
                          alignment: Alignment.centerRight,
                          text: "طريقي",
                          fontFamily: "f700",
                          fontSize: 14,
                          left: 15,
                          color: AppColors.bottonBackGround,
                        ),
                      ),
                      const SizedBox(width: 15),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
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
                            child:Image.asset(Images.delivery_car,fit: BoxFit.fill,)
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
                        CustomText(
                          alignment: Alignment.centerRight,
                          text: "اضافة خط سير",
                          fontFamily: "f700",
                          fontSize: 14,
                          left: 15,
                          color: AppColors.bottonBackGround,
                        ),
                      ),
                      const SizedBox(width: 15),
                    ],
                  ),
                ),

             //    CustomText(
             //      text: 'التواصل مع السائق مباشر',
             //      fontSize: 13,
             //      top: 30,
             //      bottom: 0,
             //      right: 15,
             //      left: 15,
             //      alignment: Alignment.centerRight,
             //      fontFamily: "f700",
             //    ),
             // CustomeTextFiled(
             //            enabled: phone,
             //            top: 5,
             //            maxline: 5,
             //            right: 15,
             //            left: 15,
             //            hint: 'الرساله',
             //            controller: _locationController,
             //            prefixicon: Icon(Icons.message_rounded),
             //          ),
             //
             //
             //    CustomInkWell(
             //        text: " تاكيد ",
             //        color: AppColors.bottonBackGround,
             //        fontColor: AppColors.screenBackGround,
             //        fontSize: 20,
             //        fontFamily: "f700",
             //        right: 40,
             //        left: 40,
             //        bottom: 15,
             //        top: 40,
             //        onTap: () {}),
              ],
            ),
          ),
        ));
  }

  diloge() async {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          //
          return CustomDialogSendMessage();
        });
    // await Future.delayed(const Duration(milliseconds: 2000), () {
    //   Navigator.pop(context);
    //   // Navigator.of(context).push(MaterialPageRoute(builder: (co) {
    //   //   return Home();
    //   // }));
    // });
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
