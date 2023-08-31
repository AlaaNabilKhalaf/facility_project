import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/features/News/widgets/news_categry_body.dart';
import 'package:flutter/material.dart';

class NewsCategory extends StatelessWidget {
  const NewsCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarButton2(text: 'News',),
          body: const NewsCategoryBody(),

      ),
    );
  }
}
