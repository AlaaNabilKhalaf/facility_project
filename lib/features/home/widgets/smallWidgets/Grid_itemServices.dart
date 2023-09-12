import 'package:flutter/material.dart';
import '../../../../constants.dart';
import 'homeitemServuces.dart';

class Grid_Item_Services extends StatelessWidget {
  Grid_Item_Services({
    super.key ,
    required this.index ,
    required this.services ,
    required this.images});
  int index=0;
  final List images ;
  final List services ;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: lIGHT_BACKGROUND
      ),
      child: HomeItemServices(
        text: services[index],
        imagePath: AssetImage(images[index],),
      ),
    );
  }

}