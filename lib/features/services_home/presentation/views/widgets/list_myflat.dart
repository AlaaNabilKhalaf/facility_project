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
          return SizedBox(
            height: MediaQuery.of(context).size.height/7,
            child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return  Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: HomeItem(
                      num: 1.2,
                      imagePath: AssetImage(items[index].imagePath) ,
                      text: items[index].text,
                    ),
                  );
                }
            ),
          );
  }
}

