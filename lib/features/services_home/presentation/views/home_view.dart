import 'package:facility/constants.dart';
import 'package:facility/features/services_home/presentation/views/widgets/home_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/appbar2.dart';
import '../../../pay_history/presentation/views/history1_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        appBar: AppBarButton2(text: 'Pay a bill',),
        body: const HomeBody(),
      ),
    );
  }
}
