import 'package:facility/constants.dart';
import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/core/shared_widgets/custom_buttom.dart';
import 'package:facility/core/shared_widgets/text_field.dart';
import 'package:facility/core/utilies/styles.dart';
import 'package:facility/features/RequestServices/presentation/view/TimeSlotsScreen.dart';
import 'package:facility/features/RequestServices/presentation/view/widgets/selectproviderBody.dart';
import 'package:facility/features/RequestServices/presentation/view/widgets/selectproviderList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectProviderScreen extends StatelessWidget {
List<String> images=[
  'assets/images/Services/Mask Group 6.png',
  'assets/images/Services/Mask Group 4.png',
  'assets/images/Services/Mask Group 3.png',
  'assets/images/Services/Mask Group2.png',
  'assets/images/Services/Mask Group 4.png',

];
  @override
  Widget build(BuildContext context) {
    final customHeight=MediaQuery.of(context).size.height;
    final customWidth=MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
appBar: AppBarButton2(text: 'Select Provider',),
        body: SelectBroviderBody(customHeight: customHeight, images: images, customWidth: customWidth),
      ),
    );
  }
}



