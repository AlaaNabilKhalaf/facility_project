import 'package:facility/constants.dart';
import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/features/review/widgets/review_tapBar.dart';
import 'package:flutter/material.dart';

import '../widgets/general_review_screen.dart';
import '../widgets/specific_review_for_tapbar.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(

      child: Scaffold(


        appBar: AppBarButton2(text: 'Review',),
        backgroundColor: lIGHT_BACKGROUND,
        body: SingleChildScrollView(
            child: CustomTabBarTwo(
          widgets: const [
            GeneralReviewScreen(
              text: "Help others know !",
            ),
            SpecificReviewForTapBar()
          ],
              items: const [
                "General",
                "Specific Reviews",
              ],

        )),
      ),
    );
  }
}
