
import 'package:facility/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';

import 'core/utilies/app_router.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark
        ));
    return   ScreenUtilInit(
        designSize: const Size(360,690),
        minTextAdapt: true,
        splitScreenMode: true,

        builder: (context,child){
      return MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.robotoTextTheme(),
        ),
      );
    });


    //             MaterialApp(
    //               theme: ThemeData(
    //                 textTheme: GoogleFonts.robotoTextTheme(),
    //               ),
    //               home: SplashScreen(),
    //             );
  }
}

