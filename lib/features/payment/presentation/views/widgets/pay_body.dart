
import 'package:facility/features/payment/presentation/views/widgets/radio_buttom.dart';
import 'package:facility/features/services_home/presentation/views/widgets/image_stack.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/shared_widgets/custom_buttom.dart';
import '../../../../../core/utilies/styles.dart';
import 'image_stack2.dart';

class PayBody extends StatefulWidget {
  const PayBody({super.key});

  @override
  State<PayBody> createState() => _PayBodyState();
}

class _PayBodyState extends State<PayBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StackImage(),
           // ImageStack(),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'Choose your payment method',
                    style: Styles.textStyle15.copyWith(fontSize: 18 , color: Colors.black),
                  ),
                  const RadioCheck2(),
                ],
              ),
            ),
            CustomButton(
              width: double.infinity,
              backgroundColor: kPrimaryColor,
              text: 'Confirm',
              func: () {
                GoRouter.of(context).push('/successView',);
              },
            ),
          ],
        ),
      ),
    );
  }
}
