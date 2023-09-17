import 'package:facility/features/review/view/specific_review.dart';
import 'package:facility/features/review/view/total_reviews.dart';
import 'package:facility/features/review/widgets/general_review_screen.dart';
import 'package:facility/features/review/widgets/my_reviews_body.dart';
import 'package:facility/features/review/widgets/specific_review_for_tapbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants.dart';
import '../../../core/utilies/styles.dart';

class CustomTabBarTwo extends StatefulWidget {
  List<Widget>  widgets;
  List<String> items ;
  CustomTabBarTwo({super.key,
    required this.widgets,
    required this.items,
  });

  @override
  State<CustomTabBarTwo> createState() => _CustomTabBarTwoState();
}



class _CustomTabBarTwoState extends State<CustomTabBarTwo> {


  int current = 0;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(height:10.h ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              color: LIGHT_GREY.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10)
            ),
            width: 340.w,
            height: 50.h,
            child: ListView.builder(
              shrinkWrap: true,
                physics:const NeverScrollableScrollPhysics(),
                itemCount: widget.items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){

                  return GestureDetector(
                    onTap: (){
                      current  =  index;
                      setState(() {});
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 4),
                      decoration: BoxDecoration(
                          color: current == index ? kPrimaryColor:Colors.transparent,
                          borderRadius: BorderRadius.circular(7)
                      ),
                      width:163.w ,
                      height:35.h,
                      child: Center(
                        child: Text(widget.items[index],
                          style: TextStyle(
                              fontSize: 17,
                              color:current == index?Colors.white:Colors.black),),),
                    ),
                  );
                }),
          ),
        ),
        SizedBox(height: 7.h,),

        SizedBox(
          height: 500.h,
          child: widget.widgets[current],

        )

      ],
    );
  }
}