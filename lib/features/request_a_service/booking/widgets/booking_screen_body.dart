import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../review/widgets/review_tapBar.dart';
import 'changed_widgets_for_booking_screen.dart';
import 'listview_for_booking.dart';

class BookingScreenBody extends StatelessWidget {
  const BookingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomTabBarTwo(
      widgets: const [
       ListviewForBookingScreen(
          upSideText: UpSideTextInUpcomingScreen(),
          downSideText:  DownSideTextInUpcomingScreen(),
         downCenterWidget: DownCenterWidgetInUpcomingScreen(),
        ),

        ListviewForBookingScreen(
          upSideText:  UpSideTextInHistoryScreen(),
          downSideText: SizedBox(),
          downCenterWidget: DownCenterWidgetInHistoryScreen(),
        ),
      ],
      items: const [
        "Upcoming",
        "History",
      ],
    );
  }
}
