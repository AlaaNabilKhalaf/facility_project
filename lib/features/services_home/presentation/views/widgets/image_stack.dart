import 'package:flutter/material.dart';

import '../../../../../core/shared_widgets/custom_buttom.dart';
import '../../../../../core/utilies/styles.dart';

class ImageStack extends StatelessWidget {
  const ImageStack({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double leftPosition = screenWidth >= 600 ? 50 : 120;

    double topPosition = screenWidth >= 600 ? 100 : 120;
    return Container(
      width: double.infinity,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
         Padding(
           padding: const EdgeInsets.symmetric(vertical: 16.0),
           child: Image.asset(
        'assets/icons/Group 1060.png',
            height: MediaQuery.of(context).size.height/5,
            width: double.infinity,
            fit: BoxFit.cover,
        ),
         ),


      Positioned(
      top:  MediaQuery.of(context).size.height*.06,
      left: MediaQuery.of(context).size.width*.3,
      child: Column(
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
      Positioned(
      top: MediaQuery.of(context).size.height*.16,
        left: MediaQuery.of(context).size.width*.33,
      child: CustomButton(
      backgroundColor: Colors.white,
      text: 'Pay all' ,
      textColor: Colors.black,
      func: () {  },
      width: 120,
      height: 35,
      ),
      ),
      ],
      ),
    );
    }
}