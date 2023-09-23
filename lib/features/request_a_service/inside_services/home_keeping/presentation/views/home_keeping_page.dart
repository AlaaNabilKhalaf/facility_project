import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:flutter/material.dart';

import '../../../plumbing/presentation/widgets/plumbing_screen_body.dart';

class HomeKeepingPage extends StatelessWidget {
  const HomeKeepingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarButton2(text: 'Home Keeping',),
        body: const PlumbingScreenBody(),
      ),
    );
  }
}
