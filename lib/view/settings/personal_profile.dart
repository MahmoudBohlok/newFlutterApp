import 'package:flutter/material.dart';
import 'package:newflutterapp/view/components/basic/custom_text.dart';
import '../../data/utiles/app_colors.dart';
import '../components/app_bar/app_bar_widgit.dart';
import '../components/basic/custom_inkwell.dart';
import '../components/basic/custom_text_filed.dart';

class PersonalProfile extends StatefulWidget {
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
                const CustomText(
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
                          child: const CustomText(
                            text: "تعديل الاسم",
                            fontFamily: "f700",
                            fontSize: 14,
                            left: 15,
                            color: AppColors.bottonBackGround,
                          ))),
                ]),
                const CustomText(
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
                            child: const CustomText(
                              text: "تعديل الهاتف",
                              fontFamily: "f700",
                              left: 15,
                              fontSize: 14,
                              color: AppColors.bottonBackGround,
                            ))),
                  ],
                ),
                const CustomText(
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
                            child: const CustomText(
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
}
