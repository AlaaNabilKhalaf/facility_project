import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../constants.dart';
import '../../../core/utilies/styles.dart';
import '../views/home_news.dart';

class PageViewerForHome extends StatefulWidget {
  const PageViewerForHome({super.key});

  @override
  State<PageViewerForHome> createState() => _PageViewerForHomeState();
}

class _PageViewerForHomeState extends State<PageViewerForHome> {
  final List<String> images = [
    "assets/homeImages/Mask Group 8.png",
    "assets/homeImages/Mask Group 18.png",
    "assets/homeImages/Mask Group 82.png",
    "assets/homeImages/Mask Group 83.png"

  ];

  final pageController = PageController();

  int currentIndex = 0 ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,width: 400.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10)
      ),
      child: Stack(
        children: [
          PageView.builder(
              onPageChanged: (index){
                setState(() {
                  currentIndex=index;
                });
              },
              controller:pageController ,
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context , index )=>
                  Stack(
                    children: [
                      GestureDetector(
                          onTap: (){Navigator.push(context, MaterialPageRoute(
                              builder: (context)=>  HomeNews(
                                index: index,
                              )));},
                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 10.w),
                            child: Image.asset(images[index],width: 340.w,height: 150.h,fit: BoxFit.fill,),
                          )

                      ),
                      Positioned(
                          left: 15,
                          top: 10,
                          child: Text('Mohamed and ali, Mohamed is on control',style: Styles.textStyle15.copyWith(color: Colors.white),))
                    ],
                  )
          ),
          Positioned(
            top: 130.h,
            left: 115.w,
            child: SmoothPageIndicator(
                controller: pageController,
                count:  images.length,
                axisDirection: Axis.horizontal,
                effect:   ExpandingDotsEffect(
                    dotHeight: 9.h,
                    dotWidth: 14.w,
                    activeDotColor: Colors.white,
                    dotColor:LIGHT_GREY
                )
            ),
          )
        ],
      ),

    );
  }
}
