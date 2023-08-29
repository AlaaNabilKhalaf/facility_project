import 'package:flutter/material.dart';

import '../../../../../core/utilies/assets.dart';
import 'list_item.dart';


class ServiceList extends StatelessWidget {
   ServiceList({super.key});

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
        height: MediaQuery.of(context).size.height/7,
        child: ListView.builder(
            itemCount: 6,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.only(right: 10),
                child: HomeItem(
                  num: 1.2,
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
