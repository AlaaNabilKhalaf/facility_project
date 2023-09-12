import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utilies/styles.dart';
import '../../../../../payment/presentation/views/widgets/radio_buttom.dart';


class choosePaymentServiceMethod extends StatelessWidget {
  const choosePaymentServiceMethod({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final customHeight=MediaQuery.of(context).size.height;
    final customWidth=MediaQuery.of(context).size.width;
    return Container(
      height: customHeight*.48,
      child: ListView(
        children: [
          Text(
            'Choose your payment method',
            style: Styles.textStyle15.copyWith(fontSize: 18 , color: Colors.black),
          ),
          const RadioCheck2(),
        ],
      ),
    );
  }
}
