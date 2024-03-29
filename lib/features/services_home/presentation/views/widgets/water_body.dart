import 'package:facility/core/shared_widgets/custom_buttom.dart';
import 'package:facility/core/utilies/styles.dart';
import 'package:facility/features/services_home/presentation/views/pay_water.dart';
import 'package:facility/features/services_home/presentation/views/widgets/water_content.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class WaterBody extends StatefulWidget {
  const WaterBody({super.key});

  @override
  State<WaterBody> createState() => _WaterBodyState();
}

class _WaterBodyState extends State<WaterBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
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
                    Image.asset('assets/icons/Rectangle 201.png'),
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
              height: MediaQuery.of(context).size.height * .5,
              width: double.infinity,
              color: const Color(0xFFF8F8F8),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: WaterContent(),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height / 14,
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: CustomButton(
                // height: MediaQuery.of(context).size.height / 14,
                backgroundColor: kPrimaryColor,
                text: 'Add to bill pay checkout',
                func: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PillPay()));
                },
                width: double.infinity,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Pay more than one service',
                style: Styles.textStyle15
                    .copyWith(fontWeight: FontWeight.w400, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
