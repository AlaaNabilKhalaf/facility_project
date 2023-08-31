import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utilies/styles.dart';

class WaterContent extends StatelessWidget {
   WaterContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    const Text('Transaction details' , style: Styles.textStyle18,),

     Expanded(
       child: ListView.builder(
         shrinkWrap: true,
            itemCount: headers.length,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 40
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    headers[index],
                    style: Styles.textStyle12.copyWith(color: LIGHT_GREY),
                  ),
                  Text(
                    data[index],
                    style: Styles.textStyle14,
                  ),
                ],
              ),
            ),),
     ),
    ],
    );
  }
  var headers = [
    "Customer name:",
    "Service address:",
    "Flat number:",
    "Bill date:",
    "Water access code:",
    "Bill number:",
    "Payment due:",
  ];
  var data = [
    "Loaa hany",
    "Talaat Mostafa Rd, Madinty",
    "3",
    "January 16, 2022",
    "000123742",
    "B83423478",
    "January 16, 2022",
  ];
}
