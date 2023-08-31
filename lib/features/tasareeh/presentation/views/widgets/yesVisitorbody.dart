import 'package:facility/constants.dart';
import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/core/shared_widgets/custom_buttom.dart';
import 'package:facility/core/utilies/styles.dart';
import 'package:facility/features/tasareeh/presentation/views/widgets/Visitorsunitdetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class YesVisitorBody extends StatelessWidget {
  const YesVisitorBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarButton2(text: 'Visitors number',),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 170.h,
              color: LIGHT_GREY.withOpacity(.2),
              child: const Text('Confirm with GPS',style: Styles.textStyle20,)
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(backgroundColor: kPrimaryColor, text: 'Next', func: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>VisitorsUnitDetails()));
              },width: double.infinity,),
            )
          ],
        ),
      ),
    );
  }
}
