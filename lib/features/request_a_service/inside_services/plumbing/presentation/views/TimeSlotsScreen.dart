import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:flutter/material.dart';

import '../widgets/timeSlotsBody.dart';

class TimeSlotsScreen extends StatefulWidget {
  @override
  State<TimeSlotsScreen> createState() => _TimeSlotsScreenState();
}

class _TimeSlotsScreenState extends State<TimeSlotsScreen> {


  @override
  Widget build(BuildContext context) {
    final customHeight=MediaQuery.of(context).size.height;
    final customWidth=MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBarButton2(text: 'Time Slots',),
        body:TimeSlotsBody(customHeight: customHeight, customWidth: customWidth),
      ),
    );
  }
}


