
import 'package:facility/core/utilies/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants.dart';
import '../../News/views/news_category.dart';
import '../../complaint/presentation/view/complainScreen.dart';
import '../../request_a_service/presentation/views/request_service_home_page.dart';
import '../../review/view/my_reviews.dart';
import '../../services_home/presentation/views/bottomNavhomeView.dart';
import '../../services_home/presentation/views/home_view.dart';
import '../../tasareeh/presentation/views/papers_screen.dart';
import '../widgets/appBarForHomePage.dart';
import '../widgets/homeServicesList.dart';
import 'moreScreen.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: lIGHT_BACKGROUND ,
      appBar: AppBarForHomePage(text: 'Services',titleBool: true,),
      body: HomeServiceList (
        theHeight: 510.h,
        nextScreen: const [
          BottomNavHomeView(),
          MoreScreen(),
          RequestServiceHomePage(),
          ComplainScreen(),
          MoreScreen(),
          MoreScreen(),
          MyReviewsScreen(),
          PaperScreen(paperScreenChaker: false),
          NewsCategory(),
          MoreScreen(),
      ],
        services: const  [
        "Pay a pill",
        "Grocery Shop",
        "Request Service",
        "Complain",
        "Security",
        "Property\n management",
        "Rating",
        "Permission",
        "News",
        "Procedures",
      ],
        images: AssetData.homeServices1,
      ) ,
    );
  }
}
