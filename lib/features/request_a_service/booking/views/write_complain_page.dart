import 'package:facility/constants.dart';
import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/core/shared_widgets/custom_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../../home/views/homePage.dart';
import '../widgets/changed_widgets_for_booking_screen.dart';

class WriteComplain extends StatelessWidget {
  const WriteComplain({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: lIGHT_BACKGROUND,
        appBar: AppBarButton2(
          text: "Write a Complain",
        ),
        body:  CustomFeedbackWidget(
          feedBackText: "Please write the reason of complain",
          hintText: 'Write your complain',
          downButton: CustomButton(
              backgroundColor: kPrimaryColor,
              text: "Submit Complain",
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
                  desc: "Complaint Submitted Successfully",
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
              width: 340.w
          ),
        ),
      ),
    );
  }
}
