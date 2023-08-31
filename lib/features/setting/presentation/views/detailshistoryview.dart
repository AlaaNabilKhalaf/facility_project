
import 'package:facility/features/setting/presentation/views/widgets/History_Details_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/appbar2.dart';

class History_Details extends StatelessWidget {
var inputController=TextEditingController();

  History_Details({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        appBar: AppBarButton2(text: 'Request Details',),
        body: History_Details_Body(inputController: inputController),
      ),
    );
  }
}


