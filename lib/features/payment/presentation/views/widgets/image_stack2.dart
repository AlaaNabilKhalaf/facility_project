import 'package:flutter/material.dart';

import '../../../../../core/utilies/styles.dart';

class StackImage extends StatelessWidget {
  const StackImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Image.asset(
            'assets/icons/Group 1060.png',
            width: 300,
            height: 300,
          ),
          Positioned(
            top: 120,
            left: 80,
            child: Column(
              children: [
                Text(
                  'Total Balance',
                  style: Styles.textStyle22.copyWith(fontSize: 13 , color: Colors.white),
                ),
                SizedBox(height: 5,),
                Text(
                  '14,234.00 EGP',
                  style: Styles.textStyle20.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
