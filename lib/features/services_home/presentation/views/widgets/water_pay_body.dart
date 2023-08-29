import 'package:facility/features/payment/presentation/views/pay_view.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/shared_widgets/custom_buttom.dart';
import '../../../../../core/utilies/styles.dart';

class WaterPayBody extends StatefulWidget {
  const WaterPayBody({Key? key}) : super(key: key);

  @override
  State<WaterPayBody> createState() => _WaterPayBodyState();
}

class _WaterPayBodyState extends State<WaterPayBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            color: const Color(0xFFF8F8F8),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/icons/Icon ionic-ios-water.png'),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Please pay',
                    style: Styles.textStyleNew12,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '1200.50 EGB',
                    style: Styles.textStyle22
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            color: const Color(0xFFF8F8F8),
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('How much would you like to pay?' , style: Styles.textStyle18),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Amount of money',
                    style: Styles.textStyle14,
                  ),
                  SizedBox(
                    height: 10,
                  ),

                ],
              ),
            ),
          ),
          CustomButton(
            // height: MediaQuery.of(context).size.height / 14,
            backgroundColor: kPrimaryColor,
            text: 'Pay now',
            func: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PaymentView()));
            },
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
