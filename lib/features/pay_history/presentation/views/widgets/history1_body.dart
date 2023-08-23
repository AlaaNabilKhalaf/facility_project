
import 'package:flutter/material.dart';

import '../../../../services_home/presentation/views/widgets/search.dart';
import 'list_view.dart';

class HistoryBody extends StatefulWidget {
  const HistoryBody({Key? key}) : super(key: key);

  @override
  State<HistoryBody> createState() => _HistoryBodyState();
}

class _HistoryBodyState extends State<HistoryBody> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
         const Search(text: 'Search for a specific payment'),
          ListHistory(),
        ],
      ),
    );
  }
}
