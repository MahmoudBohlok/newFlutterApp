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

class EditItinerary extends StatefulWidget {

  const EditItinerary({Key? key}) : super(key: key);

  @override
  State<EditItinerary> createState() => _ChangePassWord();
}

class _ChangePassWord extends State<EditItinerary> {
  @override
  void initState() {
    initUserData();
    _currentPassController.text = "القاهره";
    _newPassController.text = "الجيزه";
    _locationController.text = "10";
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
            flexibleSpace: AppBarWidgitCustom(name: "محفوظات خط السير")),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const     CustomText(
                  text: 'من',
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
                      hint: 'من',
                      controller: _currentPassController,
                      prefixicon: Icon(Icons.location_on_outlined),
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
                          child:const CustomText(
                            text: "تعديل من",
                            fontFamily: "f700",
                            fontSize: 14,
                            left: 15,
                            color: AppColors.bottonBackGround,
                          ))),
                ]),
                const    CustomText(
                  text: 'الي',
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
                        hint: 'الي',
                        controller: _newPassController,
                        prefixicon: Icon(Icons.location_on_outlined),
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
                              text: "تعديل الي",
                              fontFamily: "f700",
                              left: 15,
                              fontSize: 14,
                              color: AppColors.bottonBackGround,
                            ))),
                  ],
                ),
                const     CustomText(
                  text: 'المبلغ',
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
                        hint: 'المبلغ',
                        controller: _locationController,
                        prefixicon: Icon(Icons.monetization_on_outlined),
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
                            child:const CustomText(
                              text: "تعديل المبلغ",
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
