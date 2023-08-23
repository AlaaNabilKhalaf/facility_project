import 'package:flutter/material.dart';

import '../../../../../core/utilies/assets.dart';
import 'list_item.dart';


class ServiceList extends StatelessWidget {
   ServiceList({Key? key}) : super(key: key);

   final services = [
     "Water",
     "Electricity",
     "Maintenance",
     "Parking",
     "Club Renewal",
     "Others"
   ];

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 8),
      child: SizedBox(
        height: 100,
        child: ListView.builder(
            itemCount: 6,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: HomeItem(
                  num: 2.8,
                  imagePath: AssetImage(AssetData.services[index]),
                  text: services[index],
                ),
              );
            }
        ),
      ),
    );
  }
}
