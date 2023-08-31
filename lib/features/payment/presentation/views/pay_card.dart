import 'package:facility/features/payment/presentation/views/widgets/pay_card.dart';
import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/appbar2.dart';

class PayCardView extends StatelessWidget {
  const PayCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarButton2(text: 'Payment',),
        body: const PayCard(),
      ),
    );
  }
}
