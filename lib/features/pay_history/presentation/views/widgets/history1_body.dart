
import 'package:flutter/material.dart';

import '../../../../services_home/presentation/views/widgets/search.dart';
import 'list_view.dart';

class HistoryBody extends StatefulWidget {
  const HistoryBody({super.key});

  @override
  State<HistoryBody> createState() => _HistoryBodyState();
}

class _HistoryBodyState extends State<HistoryBody> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
         const Search(text: 'Search for a specific payment'),
          ListHistory(),
        ],
      ),
    );
  }
}
