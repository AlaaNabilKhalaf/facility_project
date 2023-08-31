import 'package:facility/features/News/widgets/news_listview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/shared_widgets/appbar2.dart';

class ChosenCategoryNews extends StatelessWidget {
  const ChosenCategoryNews({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBarButton2(
            text: 'News',
          ),
          body:  NewsListview()  ),
    );
  }
}
