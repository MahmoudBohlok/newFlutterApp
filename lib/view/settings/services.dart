import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:newflutterapp/view/components/item_view/service_item.dart';
import 'package:newflutterapp/view/components/item_view/setting_item.dart';
import '../../../data/utiles/app_colors.dart';
import '../../data/utiles/app_image_path.dart';
import '../../data/utiles/app_style.dart';
import '../components/basic/custom_text.dart';

class Services extends StatefulWidget {

  const Services({Key? key}) : super(key: key);

  @override
  State<Services> createState() => _Folders();
}

class _Folders extends State<Services> with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenBackGround,
      body: Container(alignment: Alignment.center
        ,child:
      StaggeredGrid.count(
        crossAxisCount: 3,
        mainAxisSpacing: 20,
        crossAxisSpacing: 10,
        children: List.generate(
          10,
              (index) => InkWell(
            onTap: () {


// levelsList[index].isSeen = true;
//
// if (levelsList[index].isSubscriped!) {
//   Navigator.push(context,
//       MaterialPageRoute(
//           builder: (context) {
//     return SubjectsScreen(
//         levelId: levelsList[index]
//             .id
//             .toString(),
//         levelName: levelsList[index].name,
//        );
//   }));
// }
// else {
//   showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         //
//         return Padding(
//           padding:
//               const EdgeInsets.all(16.0),
//           child: Center(
//             child: ClipRRect(
//               borderRadius:
//                   BorderRadius.circular(
//                       16),
//               child: Container(
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius:
//                         BorderRadius
//                             .circular(
//                                 16)),
//                 height:
//                     MediaQuery.of(context)
//                             .size
//                             .height *
//                         .8,
//                 child: ClosedLevelDialog(
//                     price:
//                         '${levelsList[index].price!}'),
//               ),
//             ),
//           ),
//         );
//       });
// }
            },
            child: ServicesItem("hgo]li", Images.donation)
          ),
        ),
      )





        ,)
    );
  }
}
