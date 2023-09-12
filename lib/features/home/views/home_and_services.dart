import 'package:facility/core/utilies/assets.dart';
import 'package:facility/features/home/widgets/home_and_services_body.dart';
import 'package:facility/features/home/widgets/page_viewer_for_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants.dart';
import '../../News/views/news_category.dart';
import '../../complaint/presentation/view/complainScreen.dart';
import '../../request_a_service/presentation/views/request_service_home_page.dart';
import '../../review/view/my_reviews.dart';
import '../../services_home/presentation/views/home_view.dart';
import '../../tasareeh/presentation/views/papers_screen.dart';
import 'moreScreen.dart';

class HomeAndServices extends StatelessWidget {
  const HomeAndServices({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: lIGHT_BACKGROUND,
        appBar: AppBar(
          leading: const SizedBox(),
          elevation: 0,
          backgroundColor: Colors.transparent,
          flexibleSpace: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Image.asset("assets/homeImages/svgexport-7 (68) 1.png"),
                ),
                const  Text("Khadamaty",
                  style: TextStyle(
                      fontSize: 17
                  ),),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 45,
                      height: 90,
                      decoration:  BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.elliptical(3, 3)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2), // Set the shadow color
                            spreadRadius: 2, // Set the spread radius of the shadow
                            blurRadius: 6, // Set the blur radius of the shadow
                            offset: const Offset(0, 3), // Set the offset of the shadow
                          ),
                        ],
                      ),
                      child: Image.asset(
                        'assets/images/noticon.png',
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body:  HomeAndServicesBody(
          theHeight: 300.h,
          topWidget: const PageViewerForHome(),
          homeListViewList: const [
            HomeView(),
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
          widgetInServiceRow: const SizedBox(),
          images: AssetData.homeServices1,
          services: const [
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
        ),
      ),
    );
  }
}
