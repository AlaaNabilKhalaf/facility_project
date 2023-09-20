import 'package:facility/constants.dart';
import 'package:facility/features/pay_history/presentation/views/history1_view.dart';
import 'package:facility/features/services_home/presentation/views/home_view.dart';
import 'package:facility/features/services_home/presentation/views/profileScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class PayBottomNav extends StatefulWidget {

  PayBottomNav({super.key});

  @override
  State<PayBottomNav> createState() => _PayBottomNavState();
}

class _PayBottomNavState extends State<PayBottomNav> {
int currentIndex=0;

  List<Widget> _buildScreens() {
    return [
      const HomeView(),
      const PayHistoryView(),
       ProfileScreen()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        activeColorPrimary: kPrimaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.rectangle_3_offgrid_fill),
        activeColorPrimary: kPrimaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.person),
        activeColorPrimary: kPrimaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _buildScreens()[currentIndex],
      bottomNavigationBar: PersistentTabView(

        context,

        onItemSelected: (index){
          setState(() {
            currentIndex=index;

          });
        },
        margin: const EdgeInsets.all(10),
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(50.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties( // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style9, // Choose the nav bar style with this property.
      ),
    );
  }
}