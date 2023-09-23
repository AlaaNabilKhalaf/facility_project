import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../constants.dart';

class CustomListviewTextAndButton extends StatefulWidget {
  const CustomListviewTextAndButton({
    super.key,
    required this.dateListUP,
    required this.dateListDown,
    // required this.checkers,
  });
  final List dateListUP ;
  final List dateListDown ;
  // final List checkers ;
  @override
  State<CustomListviewTextAndButton> createState() => _CustomListviewTextAndButtonState();
}

class _CustomListviewTextAndButtonState extends State<CustomListviewTextAndButton> {
  final List checkers =   [
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  ];
  int servicesCounter = 0 ;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context , index)
        {
          return Container(
            padding: const EdgeInsets.all(10),
            height: 70.h,
            decoration: BoxDecoration(color: LIGHT_GREY.withOpacity(.2),borderRadius: BorderRadius.circular(10)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(widget.dateListUP[index],
                 style:  TextStyle(
                   fontSize: 19.sp
                 ),
                 ),
                 SizedBox(height: 7.h,),
                 Text(widget.dateListDown[index],
                   style: TextStyle(
                       fontSize: 19.sp
                   ),
                 ),
               ],
             ),
                SizedBox(
                  child: GestureDetector(
                    onTap: (){
                   setState(() {
                     checkers[index] =! checkers[index];

                   });

                    },
                    child: Container(
                      height: 24.h,width: 24.h,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: kPrimaryColor
                      ),
                      child: Icon(
                        checkers[index]?
                      Icons.check : Icons.add ,
                        color: Colors.white,),
                    ),
                  ),
                )

              ],
            ),
          );
        },
        separatorBuilder: (context , index){
      return SizedBox(height: 10.h,);
        },
        itemCount: widget.dateListUP.length);
  }
}
