import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/core/shared_widgets/custom_buttom.dart';
import 'package:facility/features/tasareeh/presentation/views/data_entry.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants.dart';

class WorkersScreen extends StatelessWidget {
   WorkersScreen({super.key});
  TextEditingController workersNum = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:  Scaffold(
      appBar: AppBarButtom2(text: 'Workers Number',),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            height: 150.h,
            width: double.infinity,
            decoration: BoxDecoration(
            color: Colors.grey.shade200,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
               const Text("Please enter the number of Workers ",textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: CupertinoColors.black
              ),),
             const Padding(
                padding:  EdgeInsets.symmetric(vertical: 10),
                child: Text('Workers Number',
                  textAlign: TextAlign.left,style: TextStyle(
                  fontSize: 17,
                ),),
              ),
              SizedBox(
                height: 45.h,
                child: TextField(
                  textAlign: TextAlign.left,
                  controller: workersNum,
                  decoration: InputDecoration(
                      hintText: "2",
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
            ],
          ),
          ),


          Container(
            margin: const EdgeInsets.symmetric(vertical: 30),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 60.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
            ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

           Text("Workers Number *2",textAlign: TextAlign.left,),
              // workersNum.text == '' ? SizedBox() : Text( "${int.parse(workersNum.text.toString())*50}جنيه "),
              Text("100 Pound",textAlign: TextAlign.left,),

            ],
          ),
          ),
          SizedBox(
            height: 270.h,
          ),
          CustomButton(backgroundColor: kPrimaryColor, text: "Next", func: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const DataEntry()));
          }, width: 350.w)
        ],     ),

    ));
  }
}
