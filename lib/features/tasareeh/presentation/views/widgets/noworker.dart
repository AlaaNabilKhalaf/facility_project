import 'package:facility/features/tasareeh/presentation/views/widgets/saveRow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';
import '../../../../../core/shared_widgets/text_field.dart';
import '../../../../../core/utilies/styles.dart';
import '../../../../complaint/presentation/view/widgets/imagefun.dart';

class NoWorkerCardContainer extends StatelessWidget {
  const NoWorkerCardContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 300.h,
      color: LIGHT_GREY.withOpacity(.1),
      child: ListView(
        children:  [
          Text("Negotiator",style: Styles.textStyle20.copyWith(color: kPrimaryColor),),
          SizedBox(height: 15.h,),
          Text('Full Name'),
          SizedBox(height: 5.h,),
          defaultText(type: TextInputType.text,borderWidth: 1),
          PickImgFun(hintTxt: 'Upload Nogitator Card',),
          SizedBox(height: 5.h,),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Reason of visit'),
          ),
          defaultText(type: TextInputType.text,borderWidth: .3,maxLines: 5),
          SaveAndCancelRow()

        ],
      ),
    );
  }
}
