import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:newflutterapp/view/settings/Notification.dart';
import 'package:newflutterapp/view/settings/change_password.dart';
import 'package:newflutterapp/view/settings/edit_profile.dart';
import 'package:newflutterapp/view/settings/itinerary.dart';
import 'package:newflutterapp/view/settings/paymentPass.dart';
import 'package:newflutterapp/view/settings/personal_profile.dart';
import 'package:newflutterapp/view/settings/setting.dart';
import 'package:newflutterapp/view/settings/edit_ltinerary.dart';
import 'package:newflutterapp/view/settings/transport.dart';
import 'package:newflutterapp/view/settings/upload_reaset.dart';

import 'data/utiles/app_theme.dart';
import 'data/utiles/translation/applocal.dart';
import 'view/settings/on_bording.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( MyApp());

}

class MyApp extends StatelessWidget {
  static  String MainName="";



  const MyApp();

  static final ValueNotifier<ThemeMode> themeNotifier =
  ValueNotifier(ThemeMode.light);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return
            MaterialApp(
              home: Onbording(),
              theme: themeNotifier.value == ThemeMode.light
                  ? AppThemeStyle.lightTheme
                  :AppThemeStyle.darkTheme,
              darkTheme: AppThemeStyle.darkTheme,
              themeMode: currentMode,

              localizationsDelegates: const [
                AppLocale.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                // GlobalMaterialLocalizations.delegate,
                // GlobalWidgetsLocalizations.delegate,
              ],
              supportedLocales: [
                Locale("ar", ""),
                const Locale.fromSubtags(
                    languageCode: 'AR', scriptCode: 'Hans'),
                // Generic Simplified Chinese 'zh_Hans'
                const Locale.fromSubtags(
                    languageCode: 'AR', scriptCode: 'Hant'),
                // OR Locale('ar', 'AE') OR Other RTL locales
              ],
              locale: Locale("ar", ""),
              localeResolutionCallback: (currentLang, supportLang) {
                //   if (currentLang != null) {
                //     for (Locale locale in supportLang) {
                //       if (locale.languageCode == currentLang.languageCode) {
                //         // mySharedPreferences.setString("lang",currentLang.languageCode) ;
                //         return currentLang;
                //       }
                //     }

                return supportLang.first;
              },
              routes: {


              },
              debugShowCheckedModeBanner: false,
            );




        });}



// MultiBlocProvider(
//   providers: [
//     BlocProvider(
//       create: (BuildContext contxt) => UserCyeclCluibCubit(
//           UserCycelRepository(CharactersWebServices())),
//     ),
//   ],
//   child: ValueListenableBuilder<ThemeMode>(
//       valueListenable: themeNotifier,
//       builder: (_, ThemeMode currentMode, __) {
//         return MaterialApp(
//           theme: themeNotifier.value == ThemeMode.light
//               ? ThemeApp.lightTheme
//               : ThemeApp.darkTheme,
//           darkTheme: ThemeApp.darkTheme,
//           themeMode: currentMode,
//           localizationsDelegates: const [
//             GlobalCupertinoLocalizations.delegate,
//             GlobalMaterialLocalizations.delegate,
//             GlobalWidgetsLocalizations.delegate,
//           ],
//           supportedLocales: [
//             Locale("ar", "AR"),
//             // OR Locale('ar', 'AE') OR Other RTL locales
//           ],
//           locale: Locale("ar", "AR"),
//           debugShowCheckedModeBanner: false,
//           home: Splash(),
//         );
//       }));

}
