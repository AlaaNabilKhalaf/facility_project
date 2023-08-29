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
      {Key? key,
      required this.title,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.buttonText,
      required this.buttonFunction, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
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
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text( text1 , style: Styles.textStyle14.copyWith(fontSize: 11, color: kPrimaryColor),),
              SizedBox(height: 5,),
              Text( text2 , style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w500),),
              SizedBox(height: 5,),
              Text(text3 , style: Styles.textStyle14.copyWith(fontSize: 11 , color: LIGHT_GREY),),
            ],
          ),
          
          Expanded(
            child: CustomButton(
                backgroundColor: Color(0xFF2AC639),
                text: buttonText,
                func: buttonFunction,
            ),
          ),
        ],
      ),
    );
  }
}
