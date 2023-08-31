
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';
import '../../../../../core/shared_widgets/appbar2.dart';
import '../../../../../core/shared_widgets/custom_buttom.dart';
import '../new_gate.dart';

class Fully_Gate_Notification extends StatelessWidget {
const Fully_Gate_Notification({super.key, required this.name,required this.date,required this.details, required this.service});

final String name;
final String date;
final String service;
final String details;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        appBar: AppBarButton2(text: "Gate notification"),
       body: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           SizedBox(height: 50.h,),
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: LIGHT_GREY.withOpacity(.2),
                  borderRadius: BorderRadius.circular(10),

                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ContainerRowNotif(name: name, date: date,widget: Text(date,style: const TextStyle(color: LIGHT_GREY),),),
                    ContainerRowNotif(name: service, date: date,widget: const Icon(Icons.delete,color: Colors.red,),),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(details),
                    ),

                  ],
                )
              ),
           ),
           const Spacer(),
           Padding(
             padding: const EdgeInsets.only(bottom: 30,right: 10,left: 10),
             child: CustomButton(backgroundColor: kPrimaryColor, text: "Create New Gate notification",
                 func: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>const New_Gate()));
}, width: double.infinity,height: 55.h,),
           )

         ],
       ),
      )
    );
  }
}

class ContainerRowNotif extends StatelessWidget {
   ContainerRowNotif({
    super.key,
    required this.name,
    required this.date,
    required this.widget
  });

  final String name;
  final String date;
     Widget widget;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name,style: TextStyle(fontSize: 18.sp),),
          widget,
        ],
      ),
    );
  }
}
