import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/core/shared_widgets/custom_buttom.dart';
import 'package:facility/features/home/views/homePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import '../../../constants.dart';

class SpecificReview extends StatelessWidget {
  const SpecificReview({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarButton2(text: 'Review',),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start ,
            children: [

              Padding(
                padding: const EdgeInsets.all(13.0),
                child: TextField(
                    maxLines: 1,
                  scrollPhysics: const NeverScrollableScrollPhysics(),
                  decoration: InputDecoration(

                    suffixIcon:    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                               // height: MediaQuery.of(context).size.height*0.06,
                                child: DropdownButton<String>(

                                  icon: const Icon(Icons.keyboard_arrow_down_outlined,
                                    ),
                                  iconSize: 30,
                                  style: const  TextStyle(color: Color(0xFFB39952) ),
                                  underline: const SizedBox(height: 0,),
                                  onChanged: (String? value) {
                                  },
                                  items:const [
                                    DropdownMenuItem(value: '5',child: Text('Pay a Pill',style: TextStyle(fontSize: 23),)),
                                    DropdownMenuItem(value: '10', child: Text('Grocery Shop',style: TextStyle(fontSize: 23),)),
                                    DropdownMenuItem(value: '15', child: Text('Request Service',style: TextStyle(fontSize: 23),)),
                                  //  DropdownMenuItem(value: '20', child: Text('20',style: TextStyle(fontSize: 23),)),
                                  ],),
                              ),
                    ),
                    //const Icon(Icons.keyboard_arrow_down_rounded,size: 30,),
                      hintText: 'Select Category',
                      focusedBorder: OutlineInputBorder(
                        borderSide:  BorderSide(
                          width: 1,
                          color: Colors.grey.shade400,
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
//text
              const  Padding(
                padding: EdgeInsets.all(13.0),
                child: Text('Help others know !',
                  style: TextStyle(
                      fontSize: 16
                  ),),
              ),

              //Rating item
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

              // text
              const  Padding(
                padding: EdgeInsets.all(13.0),
                child: Text('Add a review',
                  style: TextStyle(
                      fontSize: 16
                  ),),
              ),

              //textField
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: TextField(
                  scrollPhysics: const NeverScrollableScrollPhysics(),
                  maxLines: 9,
                  decoration: InputDecoration(

                      focusedBorder: OutlineInputBorder(
                        borderSide:  BorderSide(
                          width: 1,
                          color: Colors.grey.shade400,
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
              CustomButton(backgroundColor: const Color(0xFFB39952), text: 'Submit Review',
                  func: (){
                Alert(
                  context: context,
                   image: Padding(
                     padding:  EdgeInsets.all(15.0.w),
                     child: Image.asset('assets/images/Icon awesome-check-circle.png'),
                   ),
                   style: const AlertStyle(
  descStyle: TextStyle(
    fontSize: 16
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
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    )
                  ],
                ).show();


              }, width: 340.w)



            ],
          ),
        ),
      ),
    );
  }
}
