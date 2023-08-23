import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../../constants.dart';
import '../../../core/shared_widgets/custom_buttom.dart';
import '../../home/views/homePage.dart';

class GeneralReviewScreen extends StatelessWidget {
  const GeneralReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   SingleChildScrollView(
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start ,
        children: [
          const  Padding(
            padding: EdgeInsets.all(13.0),
            child: Text('Help others know !',
              style: TextStyle(
                  fontSize: 16
              ),),
          ),
          Center(
            child: Container(
              alignment: Alignment.center,
              //  padding: const EdgeInsets.all(3.0),

              width: 340.w,
              height: 50.h,
              decoration: BoxDecoration(
                  color: LIGHT_GREY.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10.0)
              ),
              child: RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 10.0.w),
                itemBuilder: (context, _ ) => const  Icon(
                  Icons.star_rounded,
                  size: 80,
                  color: Color(0xFFB39952),
                ),
                onRatingUpdate: (rating) {},
              ),
            ),
          ),
          const  Padding(
            padding: EdgeInsets.all(13.0),
            child: Text('Add a review',
              style: TextStyle(
                  fontSize: 16
              ),),
          ),

          Padding(
            padding: const EdgeInsets.all(13.0),
            child: TextField(

              scrollPhysics: const NeverScrollableScrollPhysics(),
              maxLines: 9,
              decoration: InputDecoration(

                  focusedBorder: OutlineInputBorder(
                    borderSide:  BorderSide(
                      width: 1,
                      color: Colors.grey.shade300,
                    ),
                    borderRadius: BorderRadius.circular(10),

                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:  BorderSide(
                      width: 1,
                      color: Colors.grey.shade300,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  )

              ),
            ),
          ),
        SizedBox(height: 100.h,),
          CustomButton(backgroundColor: const Color(0xFFB39952), text: 'Submit Review', func: (){
            Alert(
              context: context,
              image: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset('assets/images/Icon awesome-check-circle.png'),
              ),
              style: const AlertStyle(
                  descStyle: TextStyle(
                      fontSize: 17
                  )
              ),
              desc: "Review submitted successfully",
              buttons: [
                DialogButton(
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage())),
                  width: 200.w,
                  color: const Color(0xFFB39952),
                  child: const Text(
                    "Go to Home",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                )
              ],
            ).show();


          }, width: 340.w)



        ],
      ),
    );
  }
}
