import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';

import 'app_style.dart';


class HelperMethod {



  static bool errorResponce(
      {BuildContext? context,
        int? ErrorStatus,
        String? errorMessage,
      }) {
    if(ErrorStatus==500){
      return true;}
    else{
      HelperMethod.awesomeSnackbarContent(title: "خطأ",context: context,errorMessage:errorMessage,contentType: ContentType.failure,  );

      return false; }


  }
  static awesomeSnackbarContent(
      {BuildContext? context,
        String? title,
        String? errorMessage,
        ContentType? contentType}) {
    final snackBar = SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: title!,
        message: errorMessage!,
        contentType: contentType!,
      ),
    );

    ScaffoldMessenger.of(context!)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  static showTopFlash(BuildContext context, String message) {
    showFlash(
      context: context,
      duration: const Duration(seconds: 2),
      persistent: true,
      builder: (_, controller) {
        return Flash(
          controller: controller,
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          boxShadows: [BoxShadow(blurRadius: 4)],
          barrierBlur: 3.0,
          barrierColor: Colors.black38,
          barrierDismissible: true,
          // behavior: style,
          position: FlashPosition.top,
          child: FlashBar(
            title: Text('خطأ'),
            content: Text(message),
            showProgressIndicator: true,
            primaryAction: TextButton(
              onPressed: () => controller.dismiss(),
              child: Text('DISMISS', style: TextStyle(color: Colors.red)),
            ),
          ),
        );
      },
    );
  }

static  SnackBarWidget(BuildContext context,text,colrs) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        text,
        style: AppStyleText.Text_400_14,
      ),
      backgroundColor: colrs,
    ));
  }
}
