import 'package:facility/constants.dart';
import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/features/review/widgets/review_tapBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(

      child: Scaffold(


        appBar: AppBarButtom2(text: 'Review',),
        backgroundColor: lIGHT_BACKGROUND,
        body: const  SingleChildScrollView(child: ReviewCustomTabBar()),
      ),
    );
  }
}
