import 'package:facility/constants.dart';
import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/features/review/widgets/my_reviews_body.dart';
import 'package:flutter/material.dart';

class TotalReviews extends StatelessWidget {
  const TotalReviews({super.key,  this.containerText , this.containerColor2 ,
    this.name, required this.fun
  });

  final VoidCallback fun ;
  final List <String>? containerText ;
  final List<Color>? containerColor2 ;
  final List<String>? name ;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: lIGHT_BACKGROUND,
        appBar: AppBarButton2(text:"Grocery Reviews",),
        body: MyReviewsBody(
          fun:  fun,
          name: name,
          containerColor2: containerColor2,
          containerText: containerText,

        ),
      ),
    );
  }
}
