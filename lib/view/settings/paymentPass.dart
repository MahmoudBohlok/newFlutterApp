import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newflutterapp/view/components/basic/custom_text.dart';
import 'package:toggle_switch/toggle_switch.dart';
import '../../../main.dart';
import '../../data/utiles/app_colors.dart';
import '../components/app_bar/app_bar_widgit.dart';
import '../components/basic/custom_inkwell.dart';
import '../components/basic/custom_text_filed.dart';

class PayMentChangePass extends StatefulWidget {
  static const routeName = 'change_user_password';

  const PayMentChangePass({Key? key}) : super(key: key);

  @override
  State<PayMentChangePass> createState() => _ChangePassWord();
}

class _ChangePassWord extends State<PayMentChangePass> {
  @override
  void initState() {
    initUserData();

    super.initState();
  }

  void initUserData() async {}

  TextEditingController code1 = TextEditingController();
  TextEditingController code2 = TextEditingController();
  TextEditingController code3 = TextEditingController();
  TextEditingController code4 = TextEditingController();
  final _currentPassController = TextEditingController();
  final _newPassController = TextEditingController();
  final _newPass1Controller = TextEditingController();
  bool _isObscure2 = true, _isObscure = true, _isObscure3 = true;
  final _formKey = GlobalKey<FormState>();
  late String _userPass;
  final List<bool> _selectedFruits = <bool>[true, false];
   List<Widget> fruits = <Widget>[
    Text('تعديل'),
    Text('اضافه'),
  ];
  late bool connected = false;
  late bool _isEdit = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.screenBackGround,
        appBar: AppBar(
            backgroundColor: AppColors.screenBackGround,
            shadowColor: Colors.black12,
            elevation: 0,
            automaticallyImplyLeading: false,
            flexibleSpace: AppBarWidgitCustom(name: " رقم سري للمدفوعات")),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomText(text: 'كلمة سر المدفوعات',fontSize: 13,top: 30,bottom: 15,right: 15,left: 15,alignment: Alignment.centerRight,fontFamily: "f700",),


                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CodeTextFiled(
                        controlTextfield: code1,
                        onChangedLastFiled: (value) {
                          if (value.length == 1) {
                            FocusManager.instance.primaryFocus?.unfocus();
                          }
                        },
                      ),
                      CodeTextFiled(controlTextfield: code2),
                      CodeTextFiled(
                        controlTextfield: code3,
                      ),
                      CodeTextFiled(
                        controlTextfield: code4,
                      ),
                    ],
                  ),
                ),
  Container(
    margin: EdgeInsets.only(top: 15),
alignment: Alignment.center,

    child:

    ToggleButtons(
      direction:  Axis.horizontal,
      onPressed: (int index) {
        setState(() {

          _isEdit=!_isEdit;

          // The button that is tapped is set to true, and the others to false.
          for (int i = 0; i < _selectedFruits.length; i++) {
            _selectedFruits[i] = i == index;
          }
        });
      },
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      selectedBorderColor: Colors.red[700],
      selectedColor: Colors.white,
      fillColor: Colors.red[200],
      color: Colors.red[400],
      constraints: const BoxConstraints(
        minHeight: 40.0,
        minWidth: 80.0,
      ),
      isSelected: _selectedFruits,
      children: fruits,
    ),
                ),
              _isEdit?  CustomText(text: 'كلمه سر المدفوعات الحاليه',fontSize: 13,top: 30,bottom: 15,right: 15,left: 15,alignment: Alignment.centerRight,fontFamily: "f700",)
                  :Container(child:null),_isEdit? Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CodeTextFiled(
                        controlTextfield: code1,
                        onChangedLastFiled: (value) {
                          if (value.length == 1) {
                            FocusManager.instance.primaryFocus?.unfocus();
                          }
                        },
                      ),
                      CodeTextFiled(controlTextfield: code2),
                      CodeTextFiled(
                        controlTextfield: code3,
                      ),
                      CodeTextFiled(
                        controlTextfield: code4,
                      ),
                    ],
                  ),
                ):Container(child:null),
                CustomText(text: 'كلمة المرور القديمه',fontSize: 13,top: 30,bottom: 0,right: 15,left: 15,alignment: Alignment.centerRight,fontFamily: "f700",),
                CustomePasswordFiled(
                  isObscure: true,
                  top: 5,
                  right: 15,
                  left: 15,
                  hint: 'كلمة المرور الاساسيه',
                  controller: _currentPassController,
                  prefixicon: Icon(Icons.lock_open_rounded),
                ),

                Row(
                  children: [
                    Expanded(
                      child: CustomInkWell(
                          text: "تاكيد",
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
                    ),

                  ],
                ),
              ],
            ),
          ),
        ));
  }

  void getView(int? index) {
    // setState(() {

    //   _isEdit=!_isEdit;
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
