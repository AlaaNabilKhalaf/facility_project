import 'package:facility/features/request_a_service/booking/views/write_complain_page.dart';
import 'package:facility/features/request_a_service/booking/views/write_review_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../../../constants.dart';
import '../../../../core/shared_widgets/custom_buttom.dart';
import '../../../../core/utilies/styles.dart';
import '../../../home/views/homePage.dart';
import '../views/cancel_request_page.dart';

class UpSideTextInUpcomingScreen extends StatelessWidget {
  const UpSideTextInUpcomingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('150 EGP',
      style: TextStyle(
          color: CupertinoColors.black,
          fontSize: 15
      ),);
  }
}


class DownSideTextInUpcomingScreen extends StatelessWidget {
  const DownSideTextInUpcomingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Pending',
      style: TextStyle(
          color: kPrimaryColor,
          fontSize: 13
      ),);
  }
}


class DownCenterWidgetInUpcomingScreen extends StatelessWidget {
  const DownCenterWidgetInUpcomingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomButton(
            backgroundColor: Colors.red,
            text: "Cancel",
            func: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>
              const CancelRequestPage()));
            },
            width: 142.w,

          ),
          SizedBox(
            width: 20.w,
          ),
          CustomButton(
            backgroundColor: kPrimaryColor,
            text: "Rescedule",
            func: (){},
            width: 142.w,


          ),
        ],
      ),
    );
  }
}


class UpSideTextInHistoryScreen extends StatelessWidget {
  const UpSideTextInHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Complete',
      style: TextStyle(
          color: Colors.green,
          fontSize: 14
      ),);
  }
}

class DownCenterWidgetInHistoryScreen extends StatelessWidget {
  const DownCenterWidgetInHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Column(
          children: [
            CustomButton(
              backgroundColor: kPrimaryColor,
              text: 'Reorder',
              func: () {  },
              width: 300.w,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Row(
                children: [
                  GestureDetector(

                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                              color: kPrimaryColor,
                              width: 2
                          )
                      ),
                      alignment: Alignment.center,
                      height: 24.h,width: 65.w,
                      child: const Text('Review',
                        style: TextStyle(
                            color: kPrimaryColor
                        ),),
                    ),
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> const WriteReviewPage()));
                    },
                  ),
                  SizedBox(width: 10.w,),
                  GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                              color: kPrimaryColor,
                              width: 2
                          )
                      ),
                      alignment: Alignment.center,
                      height: 24.h,width: 136.w,
                      child: const Text('Complain Craftman',
                        style: TextStyle(
                            color: kPrimaryColor
                        ),),
                    ),
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> const WriteComplain()));
                    },
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}

class CustomFeedbackWidget extends StatelessWidget {
  const CustomFeedbackWidget({
    super.key,
    required this.feedBackText,
    required this.hintText,
    required this.downButton,
  });
  final String feedBackText ;
  final String hintText ;
  final Widget downButton ;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
               width: 340.w,
                child: Text(
                  feedBackText,
                maxLines: 3,
                style: const TextStyle(
                  fontSize: 18,
                ),),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: TextField(
                  scrollPhysics: const NeverScrollableScrollPhysics(),
                  maxLines: 9,
                  decoration: InputDecoration(
                 hintText: hintText ,
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
            ],
          ),
          downButton
        ],
      ),
    );
  }
}


class ButtonsInCancelScreen extends StatelessWidget {
  const ButtonsInCancelScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                shape: BoxShape.rectangle,
                border: Border.all(
                    color: kPrimaryColor,
                    width: 2
                )
            ),
            alignment: Alignment.center,
            height:50,
            width: MediaQuery.of(context).size.width*0.43,
            child:  Text('Cancel',
              style: Styles.textStyle15.copyWith(color : kPrimaryColor),
    ),
          ),
          onTap: (){
            Navigator.pop(context);
          },
        ),
        SizedBox(
          width: 15.w,
        ),
        CustomButton(
          backgroundColor: kPrimaryColor,
          text: "Confirm",
          func: (){
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
              desc: "Request Cancelled successfully",
              buttons: [
                DialogButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> const HomePage())),
                  width: 200.w,
                  color: const Color(0xFFB39952),
                  child: const Text(
                    "Go to Home",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                )
              ],
            ).show();
          },
          width: MediaQuery.of(context).size.width*0.43,

        ),
      ],
    );
  }
}
