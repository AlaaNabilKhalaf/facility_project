import 'package:facility/features/review/view/specific_review.dart';
import 'package:facility/features/review/widgets/general_review_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import '../../../constants.dart';
import '../../../core/shared_widgets/custom_buttom.dart';
import '../../../core/utilies/styles.dart';

class ReviewCustomTabBar extends StatefulWidget {
  const ReviewCustomTabBar({super.key});

  @override
  State<ReviewCustomTabBar> createState() => _ReviewCustomTabBarState();
}



class _ReviewCustomTabBarState extends State<ReviewCustomTabBar> {
  List<String> items=[
    "General",
    "Specific Reviews",
  ];
  static const homeServices1 = [
  "assets/images/Group 1067.png",
  "assets/images/Group 10671.png",
  "assets/images/Path 237.png",];

  static const  services = [
    "Pay a pill",
    "Grocery Shop",
    "Request Service",];

  List widgets=  [

   const GeneralReviewScreen(),

    Column(
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
          child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: 3,
              itemBuilder: (context , index )=> GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const SpecificReview())
                    );
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
    ),


  ];
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
                itemCount: items.length,
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
                        child: Text(items[index],
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
          child: widgets[current],

        )

      ],
    );
  }
}