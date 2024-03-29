import 'package:facility/features/home/views/home_and_services.dart';
import 'package:flutter/material.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants.dart';
import '../../setting/presentation/views/setting_view.dart';
import '../views/HomeScreen.dart';
import '../views/discoverScreen.dart';
import '../views/servicesScreen.dart';


class BottomNavBarForHome extends StatefulWidget {
  const BottomNavBarForHome({super.key});

  @override
  State<BottomNavBarForHome> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBarForHome> with TickerProviderStateMixin {
  int currentIndex = 0;
  final List<Widget> _tabs =  [
    const HomeAndServices(),
    const ServicesScreen(),
    const DiscoverScreen(),
    const SettingView()
  ];
  Widget currentScreen = const HomeScreen();
  @override
  Widget build(BuildContext context) {
    // var anim = AnimationController(
    //   vsync: this,
    //   value: 1,
    //   duration: const Duration(milliseconds: 500),
    // );
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
              icon:const Icon(Icons.home),
              selectedColor: kPrimaryColor,
            ),
            DotNavigationBarItem(
              icon: const Icon(Icons.view_carousel_sharp),
              selectedColor: kPrimaryColor,
            ),
            DotNavigationBarItem(
              icon: const Icon(Icons.map),
              selectedColor: kPrimaryColor,
            ),
            DotNavigationBarItem(
              icon: const Icon(Icons.more_horiz),
              selectedColor: kPrimaryColor,
            ),
          ],

        ),
      ),
    );
  }
}
