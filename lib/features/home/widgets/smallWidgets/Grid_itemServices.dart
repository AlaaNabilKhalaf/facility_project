
import 'package:flutter/material.dart';

import '../../../../../core/utilies/assets.dart';
import '../../../../constants.dart';
import 'homeitemServuces.dart';

class Grid_Item_Services extends StatelessWidget {
  Grid_Item_Services({super.key , required this.index});
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: lIGHT_BACKGROUND
      ),
      child: HomeItemServices(
        text: services[index],
        imagePath: AssetImage(AssetData.homeServices1[index],),
      ),
    );
  }

  final services = [
  "Pay a pill",
    "Grocery Shop",
    "Request Service",
   "Complain",
   "Security",
   "Property management",
   "Rating",
   "Permeation",
   "News",
   "Procedures",
  ];
}