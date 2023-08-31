import 'package:facility/features/services/presentation/view/widgets/services_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/appbar2.dart';
class ServicesView extends StatelessWidget {
  const ServicesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBarButton2(text: 'Our services',),
        body: const ServicesBody(),
      ),
    );
  }
}