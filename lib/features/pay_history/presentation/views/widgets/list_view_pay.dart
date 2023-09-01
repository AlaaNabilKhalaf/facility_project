import 'package:facility/features/pay_history/presentation/views/widgets/pay_item.dart';
import 'package:flutter/material.dart';

class ListPay extends StatelessWidget {
   ListPay({super.key});
  List<PayItem> paymentList = [
    PayItem(
      imagePath: const AssetImage('assets/images/Icon ionic-ios-water.png'),
      title: 'Water',
      text1: 'Madinty',
      text2: '1200.50 EGB',
      text3: 'January 16, 2022, 04:35 PM',
      buttonText: 'Success',
      buttonFunction: () { },

    ),
    PayItem(
      imagePath: const AssetImage('assets/images/svgexport-7 (3).png'),
      title: 'Electricity',
      text1: 'Elrehab',
      text2: '1200.50 EGB',
      text3: 'January 16, 2022, 04:35 PM',
      buttonText: 'Pending',
      buttonFunction: () { },
    ),
    PayItem(
      imagePath: const AssetImage('assets/images/svgexport-6 (56).png'),
      title: 'Maintenance',
      text1: 'Elnoor',
      text2: '1200.50 EGB',
      text3: 'January 16, 2022, 04:35 PM',
      buttonText: 'OverDue',
      buttonFunction: () { },
    ),
    PayItem(
      imagePath: const AssetImage('assets/images/svgexport-7 (4).png'),
      title: 'Parking',
      text1: 'Madinty',
      text2: '1200.50 EGB',
      text3: 'January 16, 2022, 04:35 PM',
      buttonText: 'Success',
      buttonFunction: () { },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: paymentList.length,
      itemBuilder: (context, index) {
        return PayItem(
          title: paymentList[index].title,
          text1: paymentList[index].text1,
          text2: paymentList[index].text2,
          text3: paymentList[index].text3,
          buttonText: paymentList[index].buttonText,
          buttonFunction: () {
            // Handle button click for each item
          },
          imagePath: paymentList[index].imagePath,
        );
      },
    );
  }
}
