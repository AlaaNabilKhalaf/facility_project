import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottomNav.dart';

class BottomNavHomeView extends StatelessWidget {
  const BottomNavHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: PayBottomNav(),
    );
  }
}
