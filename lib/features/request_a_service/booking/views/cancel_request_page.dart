import 'package:facility/constants.dart';
import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:flutter/material.dart';
import '../widgets/changed_widgets_for_booking_screen.dart';

class CancelRequestPage extends StatelessWidget {
  const CancelRequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: lIGHT_BACKGROUND,
        appBar: AppBarButton2(
          text: 'Cancel Request',
        ),
        body: const CustomFeedbackWidget(
          feedBackText: "Please write the reason why you want to cancel the request",
          hintText: 'Write your feedback',
          downButton: ButtonsInCancelScreen(),
        ),



      ),
    );
  }
}
