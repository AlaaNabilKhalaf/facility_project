import 'package:facility/constants.dart';
import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/features/request_a_service/presentation/widgets/request_service_home_screen_body.dart';
import 'package:flutter/material.dart';

class RequestServiceHomeScreen extends StatelessWidget {
  const RequestServiceHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarButton2(text: 'Request Service',),
        backgroundColor: lIGHT_BACKGROUND,
        body: const RequestServiceHomeScreenBody(),
      ),
    );
  }
}
