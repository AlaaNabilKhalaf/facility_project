import 'package:flutter/material.dart';

import '../../../../services_home/presentation/views/widgets/list_item.dart';
import '../../../../services_home/presentation/views/widgets/list_model.dart';



class ListHistory extends StatelessWidget {
  ListHistory({Key? key}) : super(key: key);

  final List<ListItemModel> items = [
    ListItemModel(text: "Water", imagePath: "assets/images/Icon ionic-ios-water.png",  ),
    ListItemModel(text: "Electricity", imagePath: "assets/images/svgexport-6 (56).png",),
    ListItemModel(text: "Maintenance", imagePath: "assets/images/svgexport-7 (3).png"),
    ListItemModel(text: "Parking", imagePath: "assets/images/svgexport-7 (4).png"),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 8),
        child: SizedBox(
          height: 500,
          width: 500,
          child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: HomeItem(
                    num: 2.8,
                    imagePath: AssetImage(items[index].imagePath) ,
                    text: items[index].text,
                  ),
                );
              }
          ),
        ),
      ),
    );
  }
}

