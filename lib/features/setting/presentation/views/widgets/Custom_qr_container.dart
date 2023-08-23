import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';

class Custom_QR_Container extends StatelessWidget {
  Custom_QR_Container({required this.txt});

  String ? txt;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      alignment: Alignment.centerLeft,
      height: 50.h,
      decoration: BoxDecoration(
          color: LIGHT_GREY.withOpacity(.3),
          borderRadius: BorderRadius.circular(10)

      ),
      child: Text("$txt"),
    );
  }
}
