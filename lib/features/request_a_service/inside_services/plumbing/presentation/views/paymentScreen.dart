import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/paymentServiceBody.dart';

class PaymentServicesScreen extends StatelessWidget {

List<Map<String,dynamic>> requestDetails=[
  {'service':'Services Fees','price':'150',},
  {'service':'Provider Fees','price':'250',},
  {'service':'Total','price':'400',},


];

  @override
  Widget build(BuildContext context) {
    final customHeight=MediaQuery.of(context).size.height;
    final customWidth=MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(

        appBar: AppBarButton2(text: 'Payment',),
        body: PaymentServiceBody(customHeight: customHeight, requestDetails: requestDetails),
      ),
    );
  }
}



