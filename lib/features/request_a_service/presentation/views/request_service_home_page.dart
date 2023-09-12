import 'package:facility/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/bottomNavBar_for_services.dart';

class RequestServiceHomePage extends StatelessWidget {
  const RequestServiceHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: lIGHT_BACKGROUND,
        bottomNavigationBar: BottomNavBarForServices(),
      ),
    );
  }
}
