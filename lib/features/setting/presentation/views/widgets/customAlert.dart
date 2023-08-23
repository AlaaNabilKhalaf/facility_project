import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';
import '../../../../../core/shared_widgets/custom_buttom.dart';
import '../add_request_view.dart';

class Custom_Alert extends StatelessWidget {
 Custom_Alert({required this.widget,required this.txt});

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
            Container(
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
