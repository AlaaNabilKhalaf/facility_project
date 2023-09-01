import 'package:flutter/material.dart';

import '../../../../../core/utilies/styles.dart';

class StackImage extends StatelessWidget {
  const StackImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/icons/Group 1060.png',
          width: double.infinity,
          height: MediaQuery.of(context).size.height/4,
          fit: BoxFit.cover,
          // height: 300,
        ),
        Positioned(
          top: MediaQuery.of(context).size.height/10,
          left: MediaQuery.of(context).size.width*.3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Total Balance',
                style: Styles.textStyle22.copyWith(fontSize: 13 , color: Colors.white),
              ),
              const SizedBox(height: 5,),
              Text(
                '14,234.00 EGP',
                style: Styles.textStyle20.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
