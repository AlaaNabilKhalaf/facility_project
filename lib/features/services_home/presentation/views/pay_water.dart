import 'package:facility/features/services_home/presentation/views/widgets/water_pay_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/appbar2.dart';

class PillPay extends StatefulWidget {
  const PillPay({super.key});

  @override
  State<PillPay> createState() => _PillPayState();
}

class _PillPayState extends State<PillPay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarButton2(text: 'Water Bill',),
     body: const WaterPayBody(),
    );
  }
}
