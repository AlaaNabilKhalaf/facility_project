import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../../constants.dart';

class DateRangeContainer extends StatefulWidget {
  const DateRangeContainer({super.key});

  @override
  State<DateRangeContainer> createState() => _DateRangeContainerState();
}

class _DateRangeContainerState extends State<DateRangeContainer> {


  DateTimeRange selectedDates=DateTimeRange(start: DateTime.now(), end: DateTime.now());
  DateTime today=DateTime.now();



  DateTime? rangeStart;
  DateTime? rangeEnd;
  void onRangeSelected(DateTime? start,DateTime? end,DateTime? focusedDate){
    setState(() {
      today=focusedDate!;
      rangeStart=start;
      rangeEnd=end;
    });
  }

  void onDaySelected(DateTime day,DateTime focusedDate){
    setState(() {
      today=day;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Container(
      height: 275.h,color: LIGHT_GREY.withOpacity(.2),
      child:  ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TableCalendar(
              rangeStartDay: rangeStart,
              rangeEndDay: rangeEnd,
              calendarStyle: CalendarStyle(
                  rangeStartDecoration:const BoxDecoration(color: kPrimaryColor,shape: BoxShape.circle) ,
                  rangeEndDecoration: const BoxDecoration(color: kPrimaryColor,shape: BoxShape.circle),
                  todayDecoration: const BoxDecoration(color: kPrimaryColor,shape: BoxShape.circle),
                  selectedDecoration: const BoxDecoration(color: kPrimaryColor,shape: BoxShape.rectangle),
                  rangeHighlightColor: kPrimaryColor.withOpacity(.3)),
              rowHeight: 39.h,
              focusedDay:today , firstDay: DateTime.utc(2010,10,16), lastDay: DateTime.utc(2030,3,14),
              onDaySelected: onDaySelected,
              onRangeSelected: onRangeSelected,
              rangeSelectionMode: RangeSelectionMode.toggledOn,

            ),
          )
        ],
      ),
    );
  }
}
