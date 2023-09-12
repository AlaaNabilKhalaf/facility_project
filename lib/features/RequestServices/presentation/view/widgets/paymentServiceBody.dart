import 'package:facility/constants.dart';
import 'package:facility/core/shared_widgets/custom_buttom.dart';
import 'package:facility/core/utilies/styles.dart';
import 'package:facility/features/RequestServices/presentation/view/widgets/requestDetailsContainer.dart';
import 'package:facility/features/home/views/homePage.dart';
import 'package:facility/features/setting/presentation/views/widgets/customAlert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'choosepayment.dart';

class PaymentServiceBody extends StatelessWidget {
  const PaymentServiceBody({
    super.key,
    required this.customHeight,
    required this.requestDetails,
  });

  final double customHeight;
  final List<Map<String, dynamic>> requestDetails;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          choosePaymentServiceMethod(),
          RequestDetailsContainer(customHeight: customHeight, requestDetails: requestDetails),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomButton(backgroundColor: kPrimaryColor, text: 'Confirm', func: (){
              showDialog(context: context, builder: (context){
                return Custom_Alert(widget: HomePage(),
                    txt: Column(
                      children: [
                        Text('Request Confirmed',style: Styles.textStyle20,),
                        SizedBox(height: 7.h,),
                        Text('Your request is being processed, we will call you as soon as  possible',style: Styles.textStyle12.copyWith(color: Colors.grey),),
                      ],
                    ));
              });
            },width: double.infinity,),
          )
        ],
      ),
    );
  }
}
