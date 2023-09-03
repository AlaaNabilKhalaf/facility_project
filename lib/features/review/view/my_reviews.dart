import 'package:facility/core/shared_widgets/appbar2.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../widgets/my_reviews_body.dart';

class MyReviewsScreen extends StatelessWidget {
  const MyReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: lIGHT_BACKGROUND ,
        appBar: AppBarButton2(text:
          'My Reviews',),
        body: MyReviewsBody(
          containerColor: kPrimaryColor,
        ),
      ),
    );
  }
}
