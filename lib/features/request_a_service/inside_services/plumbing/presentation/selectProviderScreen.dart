import 'package:facility/constants.dart';
import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/features/request_a_service/inside_services/plumbing/presentation/widgets/selectproviderBody.dart';
import 'package:flutter/material.dart';

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
        backgroundColor: lIGHT_BACKGROUND,
appBar: AppBarButton2(text: 'Select Provider',),
        body: SelectBroviderBody(
            customHeight: customHeight,
            images: images,
            customWidth: customWidth),
      ),
    );
  }
}



