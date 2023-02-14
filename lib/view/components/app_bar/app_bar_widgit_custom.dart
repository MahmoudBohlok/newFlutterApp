import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

import '../../../data/utiles/app_image_path.dart';
import '../../../data/utiles/app_style.dart';


class AppBarWidgitCustom extends StatefulWidget {
  String name;

  AppBarWidgitCustom({
    required this.name,
  });

  @override
  _AppBarWidgitCustomeState createState() => _AppBarWidgitCustomeState();
}

class _AppBarWidgitCustomeState extends State<AppBarWidgitCustom> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Text(
                widget.name,
                style: AppStyleText.Text_700_20,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 8, right: 8, top: 5),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: SvgPicture.asset(
                  "${IconSvg.back}",
                  height: 20,
                  width: 24,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
