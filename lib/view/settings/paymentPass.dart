import 'package:flutter/material.dart';
import 'package:newflutterapp/view/components/basic/custom_text.dart';
import '../../data/utiles/app_colors.dart';
import '../components/app_bar/app_bar_widgit.dart';
import '../components/basic/custom_inkwell.dart';
import '../components/basic/custom_text_filed.dart';

class PayMentChangePass extends StatefulWidget {
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
  final List<bool> _selectedFruits = <bool>[true, false];
  List<Widget> fruits = <Widget>[
    const Text('تعديل'),
    const  Text('اضافه'),
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
                const  CustomText(
                  text: 'كلمة سر المدفوعات',
                  fontSize: 13,
                  top: 30,
                  bottom: 15,
                  right: 15,
                  left: 15,
                  alignment: Alignment.centerRight,
                  fontFamily: "f700",
                ),
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
                  child: ToggleButtons(
                    direction: Axis.horizontal,
                    onPressed: (int index) {
                      setState(() {
                        _isEdit = !_isEdit;
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
                _isEdit
                    ? const CustomText(
                        text: 'كلمه سر المدفوعات الحاليه',
                        fontSize: 13,
                        top: 30,
                        bottom: 15,
                        right: 15,
                        left: 15,
                        alignment: Alignment.centerRight,
                        fontFamily: "f700",
                      )
                    : Container(child: null),
                _isEdit
                    ? Padding(
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
                      )
                    : Container(child: null),
                const CustomText(
                  text: 'كلمة المرور القديمه',
                  fontSize: 13,
                  top: 30,
                  bottom: 0,
                  right: 15,
                  left: 15,
                  alignment: Alignment.centerRight,
                  fontFamily: "f700",
                ),
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
                          left: 40,
                          bottom: 15,
                          top: 40,
                          onTap: () {}),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
