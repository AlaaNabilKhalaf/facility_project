import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../News/widgets/final_news_body.dart';

class HomeNews extends StatelessWidget {
  const HomeNews({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      backgroundColor: lIGHT_BACKGROUND,
      appBar: AppBarButton2(
        text: "News Details",
      ),
      body: const FinalNewsBody( image:'assets/homeImages/Mask Group 18.png'
      ),
    )
    );
  }
}
