import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:facility/features/home/views/moreScreen.dart';
import 'package:facility/features/request_a_service/presentation/views/request_service_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants.dart';
import '../../../home/views/HomeScreen.dart';


class BottomNavBarForServices extends StatefulWidget {
  const BottomNavBarForServices({super.key});

  @override
  State<BottomNavBarForServices> createState() => _BottomNavBarForServicesState();
}

class _BottomNavBarForServicesState extends State<BottomNavBarForServices> with TickerProviderStateMixin {
  int currentIndex = 0;
  final List<Widget> _tabs =  const [
    RequestServiceHomeScreen(),
    MoreScreen(),
    MoreScreen(),

  ];
  Widget currentScreen = const HomeScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lIGHT_BACKGROUND ,
      extendBody: true,
      body: _tabs[currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: DotNavigationBar(
          marginR:  EdgeInsets.symmetric(horizontal: 14.w,vertical: 19.h),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              blurRadius: 3,
              // blurStyle: BlurStyle.outer
            )
          ],

          currentIndex: currentIndex,
          onTap: (index){
            setState(() {
              currentIndex = index;
            });
          },
          // margin: const EdgeInsets.only(left: 10, right: 10),
          // currentIndex: _SelectedTab.values.indexOf(_selectedTab),
          unselectedItemColor: Colors.grey[300],
          splashBorderRadius: 50,
          borderRadius:20,
          // onTap: _handleIndexChanged,
          dotIndicatorColor: kPrimaryColor,
          items: [
            DotNavigationBarItem(
              icon:const Icon(Icons.home , size: 27,),
              selectedColor: kPrimaryColor,
            ),
            DotNavigationBarItem(
              icon: const Icon(Icons.calendar_month , size: 27,),
              selectedColor: kPrimaryColor,
            ),
            DotNavigationBarItem(
              icon: const Icon(Icons.person , size: 27,),
              selectedColor: kPrimaryColor,
            ),
          ],

        ),
      ),
    );
  }
}
