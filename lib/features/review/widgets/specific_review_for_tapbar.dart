import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants.dart';
import '../../../core/utilies/styles.dart';
import '../view/specific_review.dart';
import '../view/total_reviews.dart';

class SpecificReviewForTapBar extends StatelessWidget {
  const SpecificReviewForTapBar({super.key});
  static const  services = [
    "Pay a pill",
    "Grocery Shop",
    "Request Service",];

  static List<Color> containerColors = [
    Colors.redAccent.shade100,
    Colors.blueAccent.shade100,
    Colors.greenAccent.shade200,
    Colors.pinkAccent.shade100,
    Colors.purpleAccent.shade100
  ];
  static const  names = [
    "Loaa Hany",
    "Alaa Nabil",
    "Sara Yasser",
    "Asmaa Ali",
    "Yara Islam"
  ];

  static const  containerTexts = [
    "LA",
    "AN",
    "SY",
    "AA",
    "YM"];
  static const homeServices1 = [
    "assets/images/Group 1067.png",
    "assets/images/Group 10671.png",
    "assets/images/Path 237.png",];
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 13,vertical: 10),
          child: Text("please select the module you want to make a review ",style: TextStyle(
              fontSize: 17
          ),),
        ),

        SizedBox(
          height: 400.h,width: 360.w,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1.3),
            itemCount: 3,
            itemBuilder: (context , index )=> GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                      TotalReviews(fun: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const SpecificReview()));
                      },
                        containerColor2: containerColors ,
                        name: names ,
                        containerText: containerTexts ,
                      )
                  ));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13,vertical:15),
                  child: Container(
                    height: 30,
                    decoration:  BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: LIGHT_GREY,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                            image: AssetImage(homeServices1[index],
                            )),
                        const SizedBox(height: 10,),
                        Text(
                          services[index],
                          style: Styles.textStyle22.copyWith(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                )),
          ),
        )],
    );
  }
}
