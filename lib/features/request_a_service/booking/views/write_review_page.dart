import 'package:facility/constants.dart';
import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:flutter/material.dart';

import '../../../review/widgets/general_review_screen.dart';

class WriteReviewPage extends StatelessWidget {
  const WriteReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: lIGHT_BACKGROUND,
        appBar: AppBarButton2(
          text: "Write a Review",
        ),
        body: const GeneralReviewScreen(
    text: "Help others know who to request!",
        )
      ),
    );
  }
}
