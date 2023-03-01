import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:newflutterapp/view/components/basic/custom_text_filed.dart';

import '../../../data/utiles/app_colors.dart';
import '../../data/utiles/app_image_path.dart';
import '../components/basic/custom_inkwell.dart';
import '../components/basic/custom_text.dart';
import '../dialog/custom_dialog.dart';

class EditProfile extends StatefulWidget {
  final String projectId;

  const EditProfile({Key? key, required this.projectId}) : super(key: key);

  @override
  State<EditProfile> createState() => _Folders();
}

class _Folders extends State<EditProfile> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final ImagePicker _picker = ImagePicker();
  late File? image = null;
  final _tabs = const [
    Tab(
        child: CustomText(
      text: 'سائق',
      fontFamily: "f400",
      fontSize: 13,
    )),
    Tab(
        child: CustomText(
      text: 'صاحب نشاط',
      fontFamily: "f300",
      fontSize: 13,
    )),
  ];
  final _name = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.screenBackGround,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomText(
              text: "تحديث البيانات",
              fontSize: 18,
              right: 15,
              top: 15,
              bottom: 15,
              fontFamily: "f800",
              alignment: Alignment.center,
            ),
            const CustomText(
              text: "لو عندك نشاط تجاري او سيارة",
              fontSize: 12,
              right: 15,
              top: 15,
              bottom: 0,
              color: AppColors.textHint,
              fontFamily: "f400",
              textAlign: TextAlign.center,
              alignment: Alignment.center,
            ),
            const CustomText(
              text: "تقدر تنضم وتكون واحد من تجار حارث",
              fontSize: 12,
              right: 15,
              top: 0,
              bottom: 15,
              color: AppColors.textHint,
              fontFamily: "f400",
              textAlign: TextAlign.center,
              alignment: Alignment.center,
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, bottom: 5, right: 20, left: 20),
              child: Container(
                height: kToolbarHeight - 10.0,
                decoration: BoxDecoration(
                  color: AppColors.colorB9B9B9,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: TabBar(
                  controller: _tabController,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: AppColors.bottonBackGround),
                  labelColor: Colors.white,
                  unselectedLabelColor: AppColors.colorC0E7D1Green,
                  tabs: _tabs,
                ),
              ),
            ),
            Expanded(
                child: Scaffold(
              backgroundColor: AppColors.screenBackGround,
              body: TabBarView(
                controller: _tabController,
                children: [driverData(context), ownerData(context)],
              ),
            ))
          ],
        ),
      ),
    );
  }

  Widget driverData(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomText(
            text: 'الاسم المدون في البطاقة الشخصية',
            fontSize: 13,
            top: 30,
            bottom: 0,
            right: 15,
            left: 15,
            alignment: Alignment.centerRight,
            fontFamily: "f700",
          ),
          CustomeTextFiled(
            top: 5,
            right: 15,
            left: 15,
            fontSize: 10,
            hint: 'الاسم المدون في البطاقة الشخصية',
            controller: _name,
            prefixicon: Icon(Icons.perm_identity_outlined),
          ),
          const CustomText(
            text: 'الرقم القومي',
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
                child: Card(
                    elevation: 10,
                    shadowColor: Colors.black.withOpacity(.30),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.black.withOpacity(.10), width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: const EdgeInsets.only(
                        left: 5, right: 15, top: 8, bottom: 8),
                    child: Column(
                      children: [
                        const CustomText(
                          text: 'الجزء الامامي من البطاقة',
                          fontSize: 10,
                          top: 10,
                          textAlign: TextAlign.center,
                          right: 15,
                          left: 15,
                          alignment: Alignment.center,
                          fontFamily: "f400",
                          color: AppColors.textHint,
                        ),
                        Container(
                            height: 70,
                            width: 70,
                            padding: EdgeInsets.only(
                                top: 0, bottom: 5, right: 10, left: 10),
                            child: Image.asset(Images.donation)),
                      ],
                    )),
              ),
              Expanded(
                child: Card(
                    elevation: 10,
                    shadowColor: Colors.black.withOpacity(.30),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.black.withOpacity(.10), width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: const EdgeInsets.only(
                        left: 15, right: 5, top: 8, bottom: 8),
                    child: Column(
                      children: [
                        const CustomText(
                          text: 'الجزء الخلفي من البطاقة',
                          fontSize: 10,
                          top: 10,
                          textAlign: TextAlign.center,
                          right: 15,
                          left: 15,
                          alignment: Alignment.center,
                          fontFamily: "f400",
                          color: AppColors.textHint,
                        ),
                        Container(
                            height: 70,
                            width: 70,
                            padding: EdgeInsets.only(
                                top: 0, bottom: 5, right: 10, left: 10),
                            child: Image.asset(Images.donation)),
                      ],
                    )),
              ),
            ],
          ),
          const CustomText(
            text: 'رخصة القيادة الخاص بالمركبة',
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
                child: GestureDetector(
                  onTap: () {
                    addImage();
                  },
                  child: Card(
                      elevation: 10,
                      shadowColor: Colors.black.withOpacity(.30),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.black.withOpacity(.10), width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: const EdgeInsets.only(
                          left: 5, right: 15, top: 8, bottom: 8),
                      child: Column(
                        children: [
                          const CustomText(
                            text: 'الجزء الامامي رخصع القياده',
                            fontSize: 10,
                            top: 10,
                            textAlign: TextAlign.center,
                            right: 15,
                            left: 15,
                            alignment: Alignment.center,
                            fontFamily: "f400",
                            color: AppColors.textHint,
                          ),
                          Container(
                              height: 70,
                              width: 70,
                              padding: EdgeInsets.only(
                                  top: 0, bottom: 5, right: 10, left: 10),
                              child: Image.asset(Images.donation)),
                        ],
                      )),
                ),
              ),
              Expanded(
                child: Card(
                    elevation: 10,
                    shadowColor: Colors.black.withOpacity(.30),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.black.withOpacity(.10), width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: const EdgeInsets.only(
                        left: 15, right: 5, top: 8, bottom: 8),
                    child: Column(
                      children: [
                        const CustomText(
                          text: 'الجزء الخلفي رحصه القياده',
                          fontSize: 10,
                          top: 10,
                          textAlign: TextAlign.center,
                          right: 15,
                          left: 15,
                          alignment: Alignment.center,
                          fontFamily: "f400",
                          color: AppColors.textHint,
                        ),
                        Container(
                            height: 70,
                            width: 70,
                            padding: EdgeInsets.only(
                                top: 0, bottom: 5, right: 10, left: 10),
                            child: Image.asset(Images.donation)),
                      ],
                    )),
              ),
            ],
          ),
          const CustomText(
            text: 'رخصة القيادة الخاص بالمركبة',
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
                child: Card(
                    elevation: 10,
                    shadowColor: Colors.black.withOpacity(.30),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.black.withOpacity(.10), width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: const EdgeInsets.only(
                        left: 5, right: 15, top: 8, bottom: 8),
                    child: Column(
                      children: [
                        const CustomText(
                          text: 'الجزء الامامي من رخصه المركبه',
                          fontSize: 10,
                          top: 10,
                          textAlign: TextAlign.center,
                          right: 15,
                          left: 15,
                          alignment: Alignment.center,
                          fontFamily: "f400",
                          color: AppColors.textHint,
                        ),
                        Container(
                            height: 70,
                            width: 70,
                            padding: EdgeInsets.only(
                                top: 0, bottom: 5, right: 10, left: 10),
                            child: Image.asset(Images.donation)),
                      ],
                    )),
              ),
              Expanded(
                child: Card(
                    elevation: 10,
                    shadowColor: Colors.black.withOpacity(.30),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.black.withOpacity(.10), width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: const EdgeInsets.only(
                        left: 15, right: 5, top: 8, bottom: 8),
                    child: Column(
                      children: [
                        const CustomText(
                          text: 'الجزء الخلفي من رخصه المركبه',
                          fontSize: 10,
                          top: 10,
                          textAlign: TextAlign.center,
                          right: 15,
                          left: 15,
                          alignment: Alignment.center,
                          fontFamily: "f400",
                          color: AppColors.textHint,
                        ),
                        Container(
                            height: 70,
                            width: 70,
                            padding: EdgeInsets.only(
                                top: 0, bottom: 5, right: 10, left: 10),
                            child: Image.asset(Images.donation)),
                      ],
                    )),
              ),
            ],
          ),
          CustomeTextFiled(
            top: 5,
            right: 15,
            left: 15,
            fontSize: 10,
            hint: 'رخصة القيادة الخاص بالمركبة',
            controller: _name,
            prefixicon: Icon(Icons.format_indent_decrease_rounded),
          ),
          const CustomText(
            text: 'ادخل عنوان النشاط',
            fontSize: 13,
            top: 30,
            bottom: 0,
            right: 15,
            left: 15,
            alignment: Alignment.centerRight,
            fontFamily: "f700",
          ),
          CustomeTextFiled(
            top: 5,
            right: 15,
            left: 15,
            fontSize: 10,
            hint: 'ادخل عنوان النشاط',
            controller: _name,
            subfixicon: Icon(Icons.keyboard_arrow_down),
          ),
          CustomInkWell(
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
        ],
      ),
    );
  }

  Widget ownerData(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomText(
            text: 'الاسم المدون في البطاقة الشخصية',
            fontSize: 13,
            top: 30,
            bottom: 0,
            right: 15,
            left: 15,
            alignment: Alignment.centerRight,
            fontFamily: "f700",
          ),
          CustomeTextFiled(
            top: 5,
            right: 15,
            left: 15,
            fontSize: 10,
            hint: 'الاسم المدون في البطاقة الشخصية',
            controller: _name,
            prefixicon: Icon(Icons.perm_identity_outlined),
          ),
          const CustomText(
            text: 'الرقم القومي',
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
                child: Card(
                    elevation: 10,
                    shadowColor: Colors.black.withOpacity(.30),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.black.withOpacity(.10), width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: const EdgeInsets.only(
                        left: 5, right: 15, top: 8, bottom: 8),
                    child: Column(
                      children: [
                        const CustomText(
                          text: 'الجزء الامامي من البطاقة',
                          fontSize: 10,
                          top: 10,
                          textAlign: TextAlign.center,
                          right: 15,
                          left: 15,
                          alignment: Alignment.center,
                          fontFamily: "f400",
                          color: AppColors.textHint,
                        ),
                        Container(
                            height: 70,
                            width: 70,
                            padding: EdgeInsets.only(
                                top: 0, bottom: 5, right: 10, left: 10),
                            child: Image.asset(Images.donation)),
                      ],
                    )),
              ),
              Expanded(
                child: Card(
                    elevation: 10,
                    shadowColor: Colors.black.withOpacity(.30),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.black.withOpacity(.10), width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: const EdgeInsets.only(
                        left: 15, right: 5, top: 8, bottom: 8),
                    child: Column(
                      children: [
                        const CustomText(
                          text: 'الجزء الخلفي من البطاقة',
                          fontSize: 10,
                          top: 10,
                          textAlign: TextAlign.center,
                          right: 15,
                          left: 15,
                          alignment: Alignment.center,
                          fontFamily: "f400",
                          color: AppColors.textHint,
                        ),
                        Container(
                            height: 70,
                            width: 70,
                            padding: EdgeInsets.only(
                                top: 0, bottom: 5, right: 10, left: 10),
                            child: Image.asset(Images.donation)),
                      ],
                    )),
              ),
            ],
          ),
          const CustomText(
            text: 'الرقم الضريبي (ترخيص النشاط التجاري)',
            fontSize: 13,
            top: 30,
            bottom: 0,
            right: 15,
            left: 15,
            alignment: Alignment.centerRight,
            fontFamily: "f700",
          ),
          CustomeTextFiled(
            top: 5,
            right: 15,
            left: 15,
            fontSize: 10,
            hint: 'الرقم الضريبي (ترخيص النشاط التجاري)',
            controller: _name,
            prefixicon: Icon(Icons.format_indent_decrease_rounded),
          ),
          const CustomText(
            text: 'ادخل عنوان النشاط',
            fontSize: 13,
            top: 30,
            bottom: 0,
            right: 15,
            left: 15,
            alignment: Alignment.centerRight,
            fontFamily: "f700",
          ),
          CustomeTextFiled(
            top: 5,
            right: 15,
            left: 15,
            fontSize: 10,
            hint: 'ادخل عنوان النشاط',
            controller: _name,
            prefixicon: Icon(Icons.my_location),
          ),
          const CustomText(
            text: 'تفاصيل النشاط',
            fontSize: 13,
            top: 30,
            bottom: 0,
            right: 15,
            left: 15,
            alignment: Alignment.centerRight,
            fontFamily: "f700",
          ),
          CustomeTextFiled(
            maxline: 5,
            top: 5,
            right: 15,
            left: 15,
            fontSize: 10,
            hint: '',
            controller: _name,
          ),
          CustomInkWell(
              text: "تاكيد",
              color: AppColors.bottonBackGround,
              fontColor: AppColors.screenBackGround,
              fontSize: 20,
              fontFamily: "f700",
              right: 40,
              left: 40,
              bottom: 15,
              top: 40,
              onTap: () {
                diloge();
              }),
        ],
      ),
    );
  }

  diloge() async {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          //
          return CustomDialog(
              titel: "سيتم مراجعة الطلب والتواصل في اقرب وقت",
              subTitel: "كود الطلب: 1281682");
        });
    await Future.delayed(const Duration(milliseconds: 2000), () {
      Navigator.pop(context);
      // Navigator.of(context).push(MaterialPageRoute(builder: (co) {
      //   return Home();
      // }));
    });
  }

  void addImage() async {
    try {
      final image = await _picker.pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imagepath = File(image.path);
      setState(() {
        this.image = imagepath;
      });
    } on PlatformException catch (e) {}
  }
}
