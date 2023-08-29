import 'package:facility/features/services_home/presentation/views/water_pill.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilies/assets.dart';
import '../../../../services_home/presentation/views/widgets/list_item.dart';
class GridItem extends StatelessWidget {
   GridItem({super.key , required this.index});
 int index=0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>WaterPill())),
      child: HomeItem(
        num: 2.8,
        text: services[index],
        imagePath: AssetImage(AssetData.services[index]),
      ),
    );
  }

   final services = [
    "Water",
    "Electricity",
    "Maintenance",
    "Parking",
    "Club Renewal",
    "Others"
  ];
}
