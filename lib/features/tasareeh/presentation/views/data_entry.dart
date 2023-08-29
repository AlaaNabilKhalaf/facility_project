import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/core/shared_widgets/custom_buttom.dart';
import 'package:facility/features/tasareeh/presentation/views/widgets/body.dart';
import 'package:facility/features/tasareeh/presentation/views/widgets/durationEntry.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants.dart';

class DataEntry extends StatelessWidget {
  const DataEntry({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarButtom2(text: "Data Entry",),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          const  Padding(
             padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
             child:   Text("Unit Number",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 17
              ),),
           ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: SizedBox(
                height: 43.h,
                child: TextField(
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: CupertinoColors.black,
                    ),

                      focusedBorder: OutlineInputBorder(
                        borderSide:  BorderSide(
                          width: 1,
                          color: Colors.grey.shade300,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:  BorderSide(
                          width: 1,
                          color: Colors.grey.shade300,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      )

                  ),
                ),
              ),
            ),
            Container(
              height: 35.h,
              margin: const EdgeInsets.only(top: 35,right: 20,left: 20),
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
               border: Border(top: BorderSide(color: Colors.grey.shade300,width: 1))
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Have an ID ?',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 17
                  ),),

                ],
              ),
            ),



            SingleChildScrollView(
              child: SizedBox(
                  height: 390.h,
                  child: const Yes()),
            ),


            CustomButton(backgroundColor: kPrimaryColor, text: "Next", func: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const DurationEntry()));
            }, width: 350.w)
          ],
        ),    ),
    );
  }
}
