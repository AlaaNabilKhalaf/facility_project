import 'package:facility/core/utilies/assets.dart';
import 'package:facility/features/home/widgets/smallWidgets/Grid_itemServices.dart';
import 'package:flutter/material.dart';




class HomeServiceList extends StatelessWidget {

HomeServiceList({
  super.key,
  required this.theHeight ,
  required this.nextScreen ,
  required this.services ,
  required this.images ,
});
final List images ;
final List services ;
   final List nextScreen ;
   double? theHeight;
  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 10),
        child: SizedBox(
          height:theHeight,
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,childAspectRatio: 1.3
              ),
              itemCount:nextScreen.length ,
              itemBuilder: (context , index)=>
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>nextScreen[index])
                            );
                          },
                          child: Grid_Item_Services(index: index,
                              images: images,
                              services: services,
                          ))
                  )),
        ),
    );
  }
}

//Padding(
//       padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 8),
//       child: SizedBox(
//         child: ListView.builder(
//             itemCount: 5,
//             scrollDirection: Axis.vertical,
//             itemBuilder: (context, index) {
//               return  Row(
//                 children: [
//                   Expanded(
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 10),
//                       child: HomeItem(num: 1.8,
//                         imagePath: AssetImage(AssetData.homeServices1[index]),
//                         text: services1[index],
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
//                       child: HomeItem(num: 1.8,
//                         imagePath: AssetImage(AssetData.homeServices2[index]),
//                         text: services2[index],
//                       ),
//                     ),
//                   ),
//                 ],
//               );
//             }
//         ),
//       ),
//     )