import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:newflutterapp/view/components/item_view/setting_item.dart';
import '../../../data/utiles/app_colors.dart';
import '../../data/utiles/app_image_path.dart';
import '../../data/utiles/app_style.dart';
import '../components/basic/custom_text.dart';

class Products extends StatefulWidget {

  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _Folders();
}

class _Folders extends State<Products> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenBackGround,
      body: Container(alignment: Alignment.center,child:

      Text.rich(
        TextSpan(
          text:"  اعرض منتجات الان في حارث " ,
          style: AppStyleText.Text_400_16,
          children: [
            TextSpan(
              text: 'الانضمام الان',
              style: const TextStyle(
                  color: AppColors.bottonBackGround,
                  fontFamily: "f400",
                  fontSize: 16),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                },
            ),
          ],
        ),
      )
        ,)
    );
  }
}
