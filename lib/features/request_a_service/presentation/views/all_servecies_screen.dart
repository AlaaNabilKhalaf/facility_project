import 'package:facility/constants.dart';
import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/features/request_a_service/presentation/widgets/all_services_screen_body.dart';
import 'package:flutter/material.dart';

class AllServicesScreen extends StatelessWidget {
  const AllServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: lIGHT_BACKGROUND,
        appBar: AppBarButton2(
          text: 'All Services ',
        ),
        body: const AllServicesScreenBody(),
      ),
    );
  }
}
