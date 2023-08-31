import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';
import '../../../../../core/utilies/styles.dart';

class UnitVisitorsDetails extends StatelessWidget {
  const UnitVisitorsDetails({
    super.key,
    required this.dropDown,
  });

  final String dropDown;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        height: 150.h,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: LIGHT_GREY.withOpacity(.2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Full Name',style: Styles.textStyle16.copyWith(color: LIGHT_GREY),),
                    SizedBox(height: 10.h,),
                    Text(dropDown=='Madinty'?'Sara Yasser':'Loaa Hany')
                  ],
                ),
                Column(
                  children: [
                    Text('Unit Number',style: Styles.textStyle16.copyWith(color: LIGHT_GREY)),
                    SizedBox(height: 10.h,),
                    Text(dropDown=='Madinty'?'123':'111')
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Unit Type',style: Styles.textStyle16.copyWith(color: LIGHT_GREY),),
                    SizedBox(height: 10.h,),
                    const Text('Partment')
                  ],
                ),
                Column(
                  children: [
                    Text('Builder Number',style: Styles.textStyle16.copyWith(color: LIGHT_GREY)),
                    SizedBox(height: 10.h,),
                    Text(dropDown=='Madinty'?'2':'21'),
                  ],
                ),
              ],
            ),
          ],
        )

    );
  }
}