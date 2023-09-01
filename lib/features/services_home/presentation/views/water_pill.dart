import 'package:facility/features/services_home/presentation/views/widgets/water_body.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../core/utilies/styles.dart';
import '../../../services/presentation/view/widgets/appBar4.dart';

class WaterPill extends StatefulWidget {
  const WaterPill({super.key});

  @override
  State<WaterPill> createState() => _WaterPillState();
}

class _WaterPillState extends State<WaterPill> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBarButtom4(
          text: '',
          columnText: Column(
            children: [
              const Text(
                  "Water Pill",style:Styles.textStyle14
              ),
              Text("Details of water bill",style:Styles.textStyle12.copyWith(color:LIGHT_GREY ) ),
            ],

          ),
        ),
        body: const WaterBody(),
      ),
    );
  }
}
