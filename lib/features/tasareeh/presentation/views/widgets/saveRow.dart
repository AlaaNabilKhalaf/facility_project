import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';
import '../../../../../core/utilies/styles.dart';

class SaveAndCancelRow extends StatelessWidget {
  const SaveAndCancelRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: GestureDetector(
                onTap: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        closeIconColor: Colors.white,
                        content: Text("User Data Canceled",),backgroundColor: Colors.red
                        ,showCloseIcon: true,));
                },
                child: Container(height: 40.h,
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(10)),child: Text("Cancel",style: Styles.textStyle20,),alignment: Alignment.center,),
              )),
          SizedBox(width: 5.w,),
          Expanded(child: GestureDetector(

            onTap: (){
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    closeIconColor: Colors.white,
                    content: Text("User Data Saved Sucessfully",),backgroundColor: Colors.green
                    ,showCloseIcon: true,));
            },

            child: Container(height: 40.h,decoration: BoxDecoration(color: kPrimaryColor,borderRadius: BorderRadius.circular(10)),
              child: Text("Save",style: Styles.textStyle20.copyWith(color: Colors.white),),alignment: Alignment.center,),
          )),
        ],
      ),
    );
  }
}
