import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/features/setting/presentation/views/widgets/phone_directory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants.dart';

class Community_Info extends StatelessWidget {
  const Community_Info({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarButtom2(
          text: "Community Info",
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 20.h,),
              Custom_Community_Container(txt: 'Phone Directory',),
              SizedBox(height: 20.h,),
              Custom_Community_Container(txt: 'Community Guidelines',),
              SizedBox(height: 20.h,),
              Custom_Community_Container(txt: 'Map',),
            ],
          ),
        ),
      ),
    );
  }
}

class Custom_Community_Container extends StatelessWidget {
  Custom_Community_Container({super.key, required this.txt});
String txt;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      alignment: Alignment.center,
      height: 85.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: LIGHT_GREY.withOpacity(.2),

      ),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(txt,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Phone_Directory()));
              },

              child: Image.asset("assets/icons/arrow.png"))
        ],
      ) ,
    );
  }
}
