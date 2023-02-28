import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newflutterapp/data/utiles/app_colors.dart';
import 'package:newflutterapp/data/utiles/app_image_path.dart';
import 'package:newflutterapp/view/settings/Notification.dart';
import 'package:onboarding/onboarding.dart';

import '../../data/utiles/app_style.dart';
import '../components/basic/custom_text.dart';



class Onbording extends StatefulWidget {
  const Onbording({Key? key}) : super(key: key);

  @override
  State<Onbording> createState() => _MyAppState();
}

class _MyAppState extends State<Onbording> {
  late Material materialButton;
  late int index;
  final onboardingPagesList = [
    PageModel(
      widget:
         SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50,left: 15,right: 15,bottom: 15),
    child: SvgPicture.asset(height: 300,
    "${ImagesSvg.Credit_card_bro}",


    ),
  ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomText(
                    alignment: AlignmentDirectional.center,
                    top: 2,
                    text: "ادفع كل ",
                    fontFamily:"f800",
                    fontSize: 22,                  ),
                  CustomText(
                    alignment: AlignmentDirectional.center,
                    top: 2,
                    text: "المشتريات",
color: AppColors.bottonBackGround,
                    fontFamily:"f800",
                    fontSize: 22,
                  ),
                ],
              ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomText(
            alignment: AlignmentDirectional.center,
            top: 2,
            text: " وانت ",
            color: AppColors.bottonBackGround,
            fontFamily:"f800",
            fontSize: 22,                  ),
          CustomText(
            alignment: AlignmentDirectional.center,
            top: 2,
            text: "في البيت",
            fontFamily:"f800",
            fontSize: 22,
          ),
        ],
      ),

              CustomText(
                alignment: AlignmentDirectional.center,
                top: 10,
                text: "عن طريق حارث تقدر تدفع كل المشتريات اونلاين وانت في البيت ",
                style: AppStyleText.Text_400_11,
              ),




            ],
          ),
        ),

    ),
    PageModel(
      widget: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50,left: 15,right: 15,bottom: 15),
               child: SvgPicture.asset(height: 300,
  "${ImagesSvg.Credit_card}",
                  ),
             ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomText(
                    alignment: AlignmentDirectional.center,
                    top: 2,
                    text: "ادفع كل ",
                    fontFamily:"f800",
                    fontSize: 22,                  ),
                  CustomText(
                    alignment: AlignmentDirectional.center,
                    top: 2,
                    text: "المشتريات",
                    color: AppColors.bottonBackGround,
                    fontFamily:"f800",
                    fontSize: 22,
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomText(
                    alignment: AlignmentDirectional.center,
                    top: 2,
                    text: " وانت ",
                    color: AppColors.bottonBackGround,
                    fontFamily:"f800",
                    fontSize: 22,                  ),
                  CustomText(
                    alignment: AlignmentDirectional.center,
                    top: 2,
                    text: "في البيت",
                    fontFamily:"f800",
                    fontSize: 22,
                  ),
                ],
              ),

              CustomText(
                alignment: AlignmentDirectional.center,
                top: 10,
                text: "عن طريق حارث تقدر تدفع كل المشتريات اونلاين وانت في البيت ",
                style: AppStyleText.Text_400_11,
              )
            ],
          ),

      ),
    ),
    PageModel(
      widget:

        SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50,left: 15,right: 15,bottom: 15),
                child: SvgPicture.asset(height:300,
  "${ImagesSvg.Credit_card_bro}",
  ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomText(
                    alignment: AlignmentDirectional.center,
                    top: 2,
                    text: "ادفع كل ",
                    fontFamily:"f800",
                    fontSize: 22,                  ),
                  CustomText(
                    alignment: AlignmentDirectional.center,
                    top: 2,
                    text: "المشتريات",
                    color: AppColors.bottonBackGround,
                    fontFamily:"f800",
                    fontSize: 22,
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomText(
                    alignment: AlignmentDirectional.center,
                    top: 2,
                    text: " وانت ",
                    color: AppColors.bottonBackGround,
                    fontFamily:"f800",
                    fontSize: 22,                  ),
                  CustomText(
                    alignment: AlignmentDirectional.center,
                    top: 2,
                    text: "في البيت",
                    fontFamily:"f800",
                    fontSize: 22,
                  ),
                ],
              ),

              CustomText(
                alignment: AlignmentDirectional.center,
                top: 10,
                text: "عن طريق حارث تقدر تدفع كل المشتريات اونلاين وانت في البيت ",
                style: AppStyleText.Text_400_11,
              )
            ],
          ),
  )
  )
  ];

  @override
  void initState() {
    super.initState();
    materialButton = _skipButton();
    index = 0;
  }

  Material _skipButton({void Function(int)? setIndex}) {
    return Material(
      borderRadius: defaultSkipButtonBorderRadius,
      color: defaultSkipButtonColor,
      child: InkWell(
        borderRadius: defaultSkipButtonBorderRadius,
        onTap: () {
          if (setIndex != null) {
            index = 2;
            setIndex(2);
          }
        },
        child: const Padding(
          padding: defaultSkipButtonPadding,
          child: Text(
            'تخطي',
            style: defaultSkipButtonTextStyle,
          ),
        ),
      ),
    );
  }

  Material get _signupButton {
    return Material(
      borderRadius: defaultProceedButtonBorderRadius,
      color: defaultProceedButtonColor,
      child: InkWell(
        borderRadius: defaultProceedButtonBorderRadius,
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return NotificationScreen(projectId: "projectId");
          }));


        },
        child: const Padding(
          padding: defaultProceedButtonPadding,
          child: Text(
            'التالي',
            style: defaultProceedButtonTextStyle,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
        child: Scaffold(
          body: Onboarding(
            pages: onboardingPagesList,
            onPageChange: (int pageIndex) {
              index = pageIndex;
            },
            startPageIndex: 0,
            footerBuilder: (context, dragDistance, pagesLength, setIndex) {
              return  Container(
                  child: Padding(
                    padding:  EdgeInsets.all(45.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [index == pagesLength - 1
                          ? _signupButton
                          : _skipButton(setIndex: setIndex),
                        CustomIndicator(
                          netDragPercent: dragDistance,
                          pagesLength: pagesLength,
                          indicator: Indicator(

                    indicatorDesign: IndicatorDesign.polygon(
                    polygonDesign: PolygonDesign(
                      polygon: DesignType.polygon_circle,
                    ),
                  ),
                )
                        ),


                      ],
                    ),
                  ),
              );
            },
          ),
        ),
      );
  }
}