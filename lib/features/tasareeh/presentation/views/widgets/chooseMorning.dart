import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';

class ChooseMorning extends StatefulWidget {
  const ChooseMorning({super.key});


  @override
  State<ChooseMorning> createState() => _ChooseMorningState();
}

class _ChooseMorningState extends State<ChooseMorning> {
  String dropDown="Morning";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: 170.w),
      child: Container(
          alignment: Alignment.center,
          height: 41.h,
          width: 100.w,
          decoration: BoxDecoration(
              color: Colors.transparent,borderRadius: BorderRadius.circular(10),
              border:
              Border.all(color: LIGHT_GREY)
          ),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(dropDown),
              DropdownButton(
                  underline: SizedBox(height: 10,),
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: const [
                    DropdownMenuItem(value: 'Morning',child: Text("Morning"),),
                    DropdownMenuItem(value: 'Night',child: Text("Night"),),
                  ],

                  onChanged: (String?newVal){
                    setState(() {
                      dropDown=newVal!;
                    });
                  })
            ],
          )
      ),
    );
  }
}
