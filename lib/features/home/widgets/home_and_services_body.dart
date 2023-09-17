import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'homeServicesList.dart';

class HomeAndServicesBody extends StatelessWidget {
  final Widget topWidget ;
  final Widget widgetInServiceRow ;
  final List homeListViewList ;
  final List images ;
  final List services ;
  final double? theHeight;

  const HomeAndServicesBody({super.key ,
    required this.topWidget ,
    required this.widgetInServiceRow ,
    required this.homeListViewList ,
    required this.services ,
    required this.images ,
    required this.theHeight
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          topWidget,
           SizedBox(height: 20.h,),
       Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Services",
                  style: TextStyle(
                      fontSize: 20
                  ),),
                widgetInServiceRow
              ],
            ),
          ),
          HomeServiceList(
            theHeight: theHeight,
          nextScreen: homeListViewList,
            images: images,
            services: services),
        ],
      ),
    );
  }
}

//WormEffect(
//
//             spacing:  8.0,
//             radius:  10.0,
//             dotWidth:  30.0,
//             dotHeight:  8.0,
//             paintStyle:  PaintingStyle.fill,
//             strokeWidth:  1.5,
//             dotColor: LIGHT_GREY,
//             activeDotColor: Colors.white,
//             type: WormType.underground
//         )