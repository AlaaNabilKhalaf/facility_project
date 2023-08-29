
import 'package:facility/features/services/presentation/view/widgets/appBar4.dart';
import 'package:facility/features/services/presentation/view/widgets/flat_body.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../core/shared_widgets/appbar2.dart';
import '../../../../core/utilies/styles.dart';
import '../../../pay_history/presentation/views/widgets/app_bar.dart';
class FlatView extends StatelessWidget {
  const FlatView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBarButtom4(
          text: '',
          columnText: Column(
          children: [
            const Text(
                "My Flat",style:Styles.textStyle14
            ),
            Text("Madinty",style:Styles.textStyle12.copyWith(color:LIGHT_GREY ) ),
          ],
        ),),
        body: const FlatBody(),
      ),
    );
  }
}