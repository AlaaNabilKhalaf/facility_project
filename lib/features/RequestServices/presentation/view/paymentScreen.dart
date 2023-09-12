import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/features/RequestServices/presentation/view/widgets/choosepayment.dart';
import 'package:facility/features/RequestServices/presentation/view/widgets/paymentServiceBody.dart';
import 'package:facility/features/RequestServices/presentation/view/widgets/requestDetailsContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utilies/styles.dart';
import '../../../payment/presentation/views/widgets/radio_buttom.dart';

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



