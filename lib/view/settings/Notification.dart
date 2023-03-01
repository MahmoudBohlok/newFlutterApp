import 'package:flutter/material.dart';
import 'package:newflutterapp/view/components/app_bar/app_bar_widgit_without_back.dart';
import 'package:newflutterapp/view/components/item_view/setting_item.dart';
import 'package:newflutterapp/view/settings/services.dart';
import '../../../data/utiles/app_colors.dart';
import '../../data/utiles/app_image_path.dart';
import '../../data/utiles/app_style.dart';
import '../components/app_bar/app_bar_widgit.dart';
import '../components/basic/custom_text.dart';
import 'NotificationView.dart';
import 'SettingView.dart';

class NotificationScreen extends StatefulWidget {
  final String projectId;

  const NotificationScreen({Key? key, required this.projectId})
      : super(key: key);

  @override
  State<NotificationScreen> createState() => _Folders();
}

class _Folders extends State<NotificationScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final _tabs = [
    const Tab(
        child: CustomText(
      text: 'محفظه حارث',
      fontFamily: "f300",
      fontSize: 12,
    )),
    const Tab(
        child: CustomText(
      text: 'استثمر ووفر',
      fontFamily: "f400",
      fontSize: 12,
    )),
    const Tab(
        child: CustomText(
      text: 'فواتير ورصيدك',
      fontFamily: "f400",
      fontSize: 12,
    )),
    const Tab(
        child: CustomText(
      text: 'تاجر واشتري',
      fontFamily: "f400",
      fontSize: 12,
    )),
    const Tab(
        child: CustomText(
      text: 'حافظ علي فلوسك',
      fontFamily: "f400",
      fontSize: 12,
    )),
    const Tab(
        child: CustomText(
      text: 'الهدايا والمجاملات',
      fontFamily: "f400",
      fontSize: 12,
    )),
    const Tab(
        child: CustomText(
      text: 'مواصلات',
      fontFamily: "f400",
      fontSize: 12,
    )),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: AppColors.screenBackGround,
            shadowColor: Colors.black12,
            elevation: 0,
            automaticallyImplyLeading: false,
            flexibleSpace: AppBarWidgitCustomWhitoutBack(name: "الاشعارات")),
        body: Container(
          color: AppColors.screenBackGround,
          child: Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: 15, bottom: 15, right: 15, left: 15),
                child: Container(
                  height: kToolbarHeight - 20.0,
                  decoration: BoxDecoration(
                    color: AppColors.colorB9B9B9,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TabBar(
                    controller: _tabController,
                    isScrollable: true,
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
                body: TabBarView(
                  controller: _tabController,
                  children: const [
                    NotificationView(),
                    NotificationView(),
                    NotificationView(),
                    NotificationView(),
                    NotificationView(),
                    NotificationView(),
                    NotificationView(),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
