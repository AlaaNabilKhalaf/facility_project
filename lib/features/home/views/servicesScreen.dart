
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants.dart';
import '../widgets/appBarForHomePage.dart';
import '../widgets/homeServicesList.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: lIGHT_BACKGROUND ,
      appBar: AppBarForHomePage(text: 'Services',titleBool: true,),
      body: HomeServiceList (theHeight: 510.h,
      ) ,
    );
  }
}
