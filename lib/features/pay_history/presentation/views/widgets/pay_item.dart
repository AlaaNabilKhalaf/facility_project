import 'package:facility/core/shared_widgets/custom_buttom.dart';

import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utilies/styles.dart';


class PayItem extends StatelessWidget {
  final ImageProvider<Object> imagePath;
  final String title;
  final String text1;
  final String text2;
  final String text3;
  final String buttonText;
  final Function() buttonFunction;

  const PayItem(
      {super.key,
      required this.title,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.buttonText,
      required this.buttonFunction, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 80,
            width: 80,
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration:  BoxDecoration(
              border: Border.all(
                color: LIGHT_GREY,
                width: .9,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(
                  image: imagePath,
                ),
                // const SizedBox(height: 8,),
                Text(
                  textAlign : TextAlign.center ,
                 title,
                  style: Styles.textStyle14.copyWith(fontSize: 10),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text( text1 , style: Styles.textStyle14.copyWith(fontSize: 11, color: kPrimaryColor),),
              const SizedBox(height: 5,),
              Text( text2 , style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w500),),
              const SizedBox(height: 5,),
              Text(text3 , style: Styles.textStyle14.copyWith(fontSize: 11 , color: LIGHT_GREY),),
            ],
          ),
          
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: CustomButton(
                height: MediaQuery.of(context).size.height/20,
                width:MediaQuery.of(context).size.width*.33,
                  backgroundColor:  buttonText=="Success" ? Color(0xFF2AC639) : buttonText=="Pending" ? kPrimaryColor:Color(0xFFB71C1C),
                  text: buttonText,
                  func: buttonFunction,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
