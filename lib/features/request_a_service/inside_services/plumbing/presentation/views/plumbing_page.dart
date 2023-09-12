import 'package:facility/constants.dart';
import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:flutter/material.dart';

import '../widgets/plumbing_screen_body.dart';

class PlumbingPage extends StatelessWidget {
  const PlumbingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBarButton2(
        text: "Plumbing",
      ),
      backgroundColor: lIGHT_BACKGROUND,
      body: const PlumbingScreenBody(),
    ));
  }
}
