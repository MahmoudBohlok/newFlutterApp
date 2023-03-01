import 'package:flutter/material.dart';

import '../../../data/utiles/app_colors.dart';

import '../components/basic/custom_text.dart';
import 'SettingView.dart';

class Folders extends StatefulWidget {
  final String projectId;

  const Folders({Key? key, required this.projectId}) : super(key: key);

  @override
  State<Folders> createState() => _Folders();
}

class _Folders extends State<Folders> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final _tabs = [
    Tab(
        child: CustomText(
      text: 'التقارير',
      fontFamily: "f300",
      fontSize: 12,
    )),
    Tab(
        child: CustomText(
      text: 'الاعدادات',
      fontFamily: "f400",
      fontSize: 12,
    )),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bottonBackGround,
        body: Column(
          children: [
            CustomText(
              text: "حسابي",
              fontSize: 22,
              right: 15,
              top: 15,
              bottom: 15,
              color: AppColors.screenBackGround,
              fontFamily: "f700",
              alignment: Alignment.centerRight,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
              child: SizedBox(
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://cdn-icons-png.flaticon.com/512/17/17004.png?w=740&t=st=1676281152~exp=1676281752~hmac=c10dd5c5bb5a0df4c4c83d6e47abcc4ec166d0c1daf96c8c1f8a298785d792f5"),
                      maxRadius: 30,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      height: 50,
                      color: Colors.transparent,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Expanded(
                            child: CustomText(
                                alignment: AlignmentDirectional.centerStart,
                                text: "محمد احمد جمال",
                                color: AppColors.screenBackGround,
                                fontFamily: "f400",
                                fontSize: 15),
                          ),
                          Expanded(
                            child: CustomText(
                              alignment: AlignmentDirectional.centerStart,
                              textAlign: TextAlign.start,
                              top: 1,
                              maxLine: 1,
                              text: "123456789",
                              color: AppColors.textHint,
                              fontSize: 13,
                              fontFamily: "f400",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Card(
                elevation: 15,
                shadowColor: Colors.black.withOpacity(.10),
                color: AppColors.screenBackGround,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: AppColors.screenBackGround, width: 1),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40)),
                ),
                margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                      child: Card(
                        elevation: 15,
                        color: AppColors.colorB9B9B9,
                        shadowColor: Colors.black.withOpacity(.10),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: AppColors.colorB9B9B9, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: const EdgeInsets.only(
                            left: 10, right: 10, top: 8, bottom: 8),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 5, bottom: 5, right: 5, left: 5),
                          child: Container(
                            height: kToolbarHeight - 20.0,
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
                      ),
                    ),
                    Expanded(
                        child: Scaffold(
                      body: TabBarView(
                        controller: _tabController,
                        children: [
                          SettingView(),
                        ],
                      ),
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
