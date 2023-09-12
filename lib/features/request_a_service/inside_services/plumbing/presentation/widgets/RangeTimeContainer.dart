import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../constants.dart';
import '../../../../../tasareeh/presentation/views/widgets/chooseMorning.dart';
import '../../../../../tasareeh/presentation/views/widgets/choosetime.dart';

class RangeTimeContainer extends StatelessWidget {
  const RangeTimeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 270.h,color: LIGHT_GREY.withOpacity(.2),
      child:  ListView(
        scrollDirection: Axis.vertical,
        children: [
          const Text('Choose Time from'),
          SizedBox(height: 7.h,),
          const ChooseMorning(),
          SizedBox(height: 5.h,),
          const ChooseTime(),
          SizedBox(height: 5.h,),
          const Text('To'),
          SizedBox(height: 5.h,),
          const ChooseMorning(),
          const ChooseTime()

        ],
      ),
    );
  }
}
