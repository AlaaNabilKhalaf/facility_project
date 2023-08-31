import 'package:facility/features/home/views/moreScreen.dart';
import 'package:facility/features/home/widgets/smallWidgets/Grid_itemServices.dart';
import 'package:facility/features/services_home/presentation/views/widgets/bottom_nav.dart';
import 'package:facility/features/tasareeh/presentation/views/papers_screen.dart';
import 'package:facility/features/tasareeh/presentation/views/widgets/durationEntry.dart';
import 'package:facility/features/tasareeh/presentation/views/widgets/tasareeh.dart';
import 'package:facility/features/services_home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../review/view/review_page.dart';
import '../../setting/presentation/animation/fadeanimation.dart';



class HomeServiceList extends StatelessWidget {
   HomeServiceList({Key? key,}) : super(key: key);
   final List nextScreen = [
     const BottomNavBar(),
     const MoreScreen(),
     const MoreScreen(),
     const MoreScreen(),
     const MoreScreen(),
     const MoreScreen(),
     const ReviewPage(),
PaperScreen(paperScreenChaker: false)  ,
     const MoreScreen(),
     const MoreScreen(),
   ];
  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 10),
        child: SizedBox(
          height: 510.h,
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
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