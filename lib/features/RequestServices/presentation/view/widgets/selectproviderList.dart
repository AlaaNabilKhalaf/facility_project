import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';
import '../../../../../core/utilies/styles.dart';

class SelectProviderList extends StatelessWidget {
  const SelectProviderList({
    super.key,
    required this.customHeight,
    required this.images,
  });

  final double customHeight;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:customHeight*.6 ,
      child: ListView.separated(itemBuilder: (context,index){
        return Container(
          padding: EdgeInsets.all(10),
          height: customHeight*.15,
          decoration: BoxDecoration(color: LIGHT_GREY.withOpacity(.2),borderRadius: BorderRadius.circular(10)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(images[index],height: 70.h,fit: BoxFit.fill,),
              SizedBox(width: 7.w,),
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Ahmed Khaled',style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w500),),
                  Text('Category :plumbing '),
                  Row(children: [
                    Icon(Icons.star,color: Colors.yellow,),
                    Text('4.3')
                  ],)
                ],
              ),
              const Text('30 EGP/h',style: Styles.textStyle20,)
            ],
          ),
        );
      }, separatorBuilder: (context,index){
        return SizedBox(height: 10.h,);
      }, itemCount: 5),
    );
  }
}