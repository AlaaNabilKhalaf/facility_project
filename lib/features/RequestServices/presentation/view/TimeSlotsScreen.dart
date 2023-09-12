import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/core/shared_widgets/custom_buttom.dart';
import 'package:facility/features/RequestServices/presentation/view/AdressScreen.dart';
import 'package:facility/features/RequestServices/presentation/view/widgets/RangeTimeContainer.dart';
import 'package:facility/features/RequestServices/presentation/view/widgets/SelectDateContainer.dart';
import 'package:facility/features/RequestServices/presentation/view/widgets/timeSlotsBody.dart';
import 'package:facility/features/tasareeh/presentation/views/widgets/chooseMorning.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants.dart';
import '../../../../core/utilies/styles.dart';
import '../../../tasareeh/presentation/views/widgets/choosetime.dart';

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


