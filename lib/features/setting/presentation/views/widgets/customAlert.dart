import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';
import '../../../../../core/shared_widgets/custom_buttom.dart';

class Custom_Alert extends StatelessWidget {
 Custom_Alert({super.key, required this.widget,required this.txt});

Widget widget;
Widget txt;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        height: 220.h,
        width: 300.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                height: 80,

                child: Image.asset("assets/icons/correct.png",fit: BoxFit.fill,)),
             txt,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(backgroundColor: kPrimaryColor,
                  text: "Go to Home", func: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>widget));
                  }, width: double.infinity),
            )
          ],
        ),
      ),
    );
  }
}
