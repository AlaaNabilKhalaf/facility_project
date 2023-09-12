import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../constants.dart';
import '../../../../../../core/shared_widgets/custom_buttom.dart';
import '../views/AdressScreen.dart';
import 'RangeTimeContainer.dart';
import 'SelectDateContainer.dart';

class TimeSlotsBody extends StatelessWidget {
  const TimeSlotsBody({
    super.key,
    required this.customHeight,
    required this.customWidth,
  });

  final double customHeight;
  final double customWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: customHeight,
        width:customWidth ,
        child: Column(
          children: [
            SelectDateContainer(),
            SizedBox(height: 30.h,),
            const RangeTimeContainer(),
            SizedBox(height: 30.h,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(
                  width: double.infinity,
                  backgroundColor: kPrimaryColor, text: 'Next', func: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddressScreen()));
              }),
            )
          ],
        ),
      ),
    );
  }
}
