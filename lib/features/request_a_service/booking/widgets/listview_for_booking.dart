import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants.dart';

class ListviewForBookingScreen extends StatelessWidget {
  const ListviewForBookingScreen({
    super.key,
    required this.upSideText,
    required this.downSideText,
    required this.downCenterWidget,
  });
  final Widget upSideText ;
  final Widget downSideText ;
  final Widget downCenterWidget ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
          itemBuilder: (context , index)=> Container(
            margin: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 16,
horizontal: 12
            ),
            decoration: BoxDecoration(
               color : LIGHT_GREY.withOpacity(0.2),
              borderRadius: BorderRadius.circular(8)
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 65.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //image
                      SizedBox(
                        height: 65.h,width: 110.w,
                        child: Image.asset(
                          "assets/images/request_service_images/plumbing_images/Mask Group 62.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      //Texts
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                     const   Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                       Text(' Category : ',
                             style: TextStyle(
                               color: Colors.grey,
                               fontSize: 12
                             ),),
                          Text('Plumbing',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12
                                ),
                              ),

                              // upSideWidget
                            ],
                          ),
                          SizedBox(height: 3.h,),
                          const Text(' Tap Repair',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14
                            ),
                          ),
                          SizedBox(height: 3.h,),
                         const  Row(
                            children: [
                              Icon(Icons.calendar_month,
                                color: Colors.black,
                                size: 18,),
                              Text(' 13 Wed 2022',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 3.h,),
                     const  Row(
                            children: [
                            Icon(Icons.watch_later,
                                color: Colors.black,
                                size: 18,),
                              Text(' 08:00 am',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13
                                ),
                              ),
                              // SizedBox(
                              //  width: sizedBoxWidth.h,
                              // ),
                              // downSideWidget
                            ],
                          ),
                        ],
                      ),
                      //Custom Texts
                      Column(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    upSideText,
// SizedBox(
// height: sizedBoxHeight.h,
// ),
    downSideText

  ],

)

                    ],
                  ),
                ),
                downCenterWidget
              ],
            ),
          ),
        ),
    );
  }
}
