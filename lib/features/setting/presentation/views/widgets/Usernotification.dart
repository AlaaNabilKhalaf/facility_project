import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../../constants.dart';
import '../../../../../core/shared_widgets/custom_buttom.dart';
import '../new_gate.dart';

class EmptyNotificationListView extends StatelessWidget {
  const EmptyNotificationListView({super.key});

  @override

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Spacer(flex: 5,),
        DefaultTextStyle(style: const TextStyle(color: LIGHT_GREY),
            child:AnimatedTextKit(animatedTexts: [
              TypewriterAnimatedText("You don't have any invitations at that moment")              ],

            )
        ),

        const Spacer(flex: 4,),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.h,vertical: 25),
          child: CustomButton(
            height: 55.h,
            backgroundColor: kPrimaryColor, text: 'Create New Gate Notification ', func: () {
            Navigator.push(context,
                PageTransition(child: const New_Gate(),
                    type: PageTransitionType.topToBottom,duration: const Duration(seconds: 1))

/////
            );

          }, width: double.infinity,),
        ),
      ],
    );
  }
}