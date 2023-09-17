import 'package:facility/constants.dart';
import 'package:facility/features/request_a_service/booking/widgets/booking_screen_body.dart';
import 'package:flutter/material.dart';

import '../../../home/widgets/appBarForHomePage.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lIGHT_BACKGROUND,
      appBar: AppBarForHomePage(text: 'Booking',
        titleBool: true,),
      body: const BookingScreenBody(),
    );
  }
}
