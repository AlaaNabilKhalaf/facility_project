import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/features/tasareeh/presentation/views/widgets/novisitorsunitdetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoVisitorBody extends StatelessWidget {
  const NoVisitorBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarButton2(text: 'Unit Details',),
      body: NoVisitorsUnitDetails()
    );
  }
}
