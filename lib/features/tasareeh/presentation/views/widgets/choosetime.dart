
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';

class ChooseTime extends StatefulWidget {

  @override
  State<ChooseTime> createState() => _ChooseTimeState();
}

class _ChooseTimeState extends State<ChooseTime> {
  List <dynamic> timeee=[
    "12:00","1:00","2:00","3:00","4:00", "5:00", "6:00", "7:00", "8:00", "9:00", "10:00", "11:00",
  ];

  int current=0;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        height: 55.h,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: timeee.length,
            itemBuilder: (context,index){
              return GestureDetector(
                onTap: (){
                  setState(() {
                    current=index;
                  });                        },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(10),
                  width: 69.w,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: current==index?kPrimaryColor:Colors.transparent,
                  ),
                  child: Text(timeee[index],style: TextStyle(color: current==index?Colors.white:Colors.black),),
                ),
              );
            })
    );
  }
}