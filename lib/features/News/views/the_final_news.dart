import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/final_news_body.dart';

class TheFinalNews extends StatelessWidget {
  const TheFinalNews({super.key,
    required this.title,
  });
final String title ;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarButton2(
          text: title.toLowerCase(),
        ),
        body: const FinalNewsBody(),


      ),
    );
  }
}
