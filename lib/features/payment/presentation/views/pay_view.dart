import 'package:facility/features/payment/presentation/views/widgets/pay_body.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../core/shared_widgets/appbar2.dart';
import '../../../../core/utilies/styles.dart';
import '../../../services/presentation/view/widgets/appBar4.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarButtom4(
          text: '',
          columnText: Column(
            children: [
              const Text(
                  "Payment",style:Styles.textStyle14
              ),
              Text("Payment methods",style:Styles.textStyle12.copyWith(color:LIGHT_GREY ) ),
            ],

          ),
        ),

        body: const PayBody(),
      ),
    );
  }
}
