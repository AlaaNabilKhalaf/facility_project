import 'package:facility/features/News/views/news_category.dart';
import 'package:facility/features/home/views/moreScreen.dart';
import 'package:facility/features/home/widgets/smallWidgets/Grid_itemServices.dart';
import 'package:facility/features/services_home/presentation/views/widgets/bottom_nav.dart';
import 'package:facility/features/tasareeh/presentation/views/widgets/durationEntry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants.dart';
import '../../review/view/review_page.dart';

class HomeServiceList extends StatelessWidget {
   HomeServiceList({super.key,
   required this.theHeight
   });
   final double theHeight ;
   final List nextScreen = [
     const BottomNavBar(),
     const MoreScreen(),
     const MoreScreen(),
     const MoreScreen(),
     const MoreScreen(),
     const MoreScreen(),
     const ReviewPage(),
     const DurationEntry(),
     const NewsCategory(),
     const MoreScreen(),
   ];
  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        child: Container(
          height: theHeight.h,

          decoration: BoxDecoration(
            color: lIGHT_BACKGROUND
          ),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,childAspectRatio: 1.3
              ),
              itemCount:10 ,
              itemBuilder: (context , index)=>
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>nextScreen[index])
                            );
                          },
                          child: Grid_Item_Services(index: index,))
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