import 'package:flutter/material.dart';

import 'list_item.dart';
import 'list_model.dart';


class ListFlat extends StatelessWidget {
   ListFlat({Key? key}) : super(key: key);

  final List<ListItemModel> items = [
    ListItemModel(text: "Rehab", imagePath: "assets/images/my_flat/flat.png"  ),
    ListItemModel(text: "Madinaty", imagePath: "assets/images/my_flat/flat.png"),
    ListItemModel(text: "Noor", imagePath: "assets/images/my_flat/flat.png"),
  ];

  @override
  Widget build(BuildContext context) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 8),
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
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
          );
  }
}

