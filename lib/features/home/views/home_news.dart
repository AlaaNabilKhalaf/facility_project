import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../News/widgets/final_news_body.dart';

class HomeNews extends StatelessWidget {
  HomeNews({super.key,
   required this.index,
 });
final int index ;

 final List<String> images = [
   "assets/homeImages/Mask Group 8.png",
   "assets/homeImages/Mask Group 18.png",
   "assets/homeImages/Mask Group 82.png",
   "assets/homeImages/Mask Group 83.png"

 ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      backgroundColor: lIGHT_BACKGROUND,
      appBar: AppBarButton2(
        text: "News Details",
      ),
      body:  FinalNewsBody( image:images[index]
      ),
    )
    );
  }
}
