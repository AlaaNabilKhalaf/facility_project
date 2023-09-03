import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/features/complaint/presentation/view/widgets/ComplaintBody.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ComplainScreen extends StatelessWidget {
  const ComplainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBarButton2(text: 'Complaint',),
      body: Complaint_Body(),
    ));
  }
}


