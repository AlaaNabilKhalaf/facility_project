
import 'package:facility/features/payment/presentation/views/widgets/success_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/appbar2.dart';
class SuccessView extends StatelessWidget {
  const SuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarButton2(text: 'Payment',),
        body: const SuccessBody(),
      ),
    );
  }
}