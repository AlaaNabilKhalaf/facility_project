import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../widgets/bottomNavForHome.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Scaffold(
          backgroundColor: lIGHT_BACKGROUND ,
          bottomNavigationBar: BottomNavBarForHome(),

      ),
    );
  }
}
