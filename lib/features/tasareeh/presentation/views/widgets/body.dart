import 'package:facility/constants.dart';
import 'package:facility/core/shared_widgets/text_field.dart';
import 'package:facility/core/utilies/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Yes extends StatefulWidget {
  const Yes({super.key});



  @override
  State<Yes> createState() => _YesState();
}

class _YesState extends State<Yes> {
  bool isClicked=false;
  bool isClicked2=false;
  int currentOption=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child:ListTile(
                    title: const Text('Yes'),
                    leading: Radio(value:1,
                        groupValue: currentOption,
                        onChanged: (value){
                          setState(() {
                            currentOption=value as int;
                          });
                        }),

                  ),
                ),
                Expanded(
                  child:ListTile(
                    title: const Text('No'),
                    leading: Radio(value:2, groupValue: currentOption, onChanged: (value){
                      setState(() {
                        currentOption=value as int;
                      });
                    }),

                  ),
                ),
              ],
            ),

            const Text('Please enter Customers Data'),
            SizedBox(height: 10.h,),
            isClicked==false?
            Container(
              padding: const EdgeInsets.all(10),
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10)
              ),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Customer 1"),
                  IconButton(onPressed: (){
                    setState(() {
                      isClicked=true;
                    });
                  }, icon: const Icon(Icons.keyboard_arrow_down))
                ],
              ),
            ):
            Container(
              padding: const EdgeInsets.all(10),
              height:550.h,
              color: LIGHT_GREY.withOpacity(.1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Customer 1"),
                      IconButton(onPressed: (){
                        setState(() {
                          isClicked=false;
                        });
                      }, icon: const Icon(Icons.keyboard_arrow_up)
                      )
                    ],
                  ),
                  SizedBox(height: 20.h,),
                  const Text("Customer Name"),
                  SizedBox(height: 5.h,),
                  defaultText(type: TextInputType.text,borderWidth: .3),

                  SizedBox(height: 10.h,),
                  const Text("ID Number"),
                  SizedBox(height: 5.h,),
                  defaultText(type: TextInputType.text,borderWidth: .3),
                  SizedBox(height: 10.h,),
                  defaultText(

                      type: TextInputType.text,borderWidth: 1,suffix: Icons.upload_rounded,hint: "Upload your ID")
                  ,SizedBox(height: 10.h,),
                  const Text("Reason for visit"),
                  SizedBox(height: 5.h,),
                  defaultText(type: TextInputType.text,maxLines: 4,borderWidth: .2),
                  SizedBox(height: 2.w,),
                  SizedBox(
                    height: 100.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Container(height: 40.h,
                          decoration: BoxDecoration(border: Border.all(color: LIGHT_GREY),borderRadius: BorderRadius.circular(10)),alignment: Alignment.center,child: const Text("Save",style: Styles.textStyle20,),)),
                        SizedBox(width: 5.w,),
                        Expanded(child: Container(height: 40.h,decoration: BoxDecoration(color: kPrimaryColor,borderRadius: BorderRadius.circular(10)),alignment: Alignment.center,
                          child: Text("Cancel",style: Styles.textStyle20.copyWith(color: Colors.white),),)),
                      ],
                    ),
                  )
                ],
              ),

            ),
            SizedBox(height:20.h,),

            isClicked2==false?
            Container(
              padding: const EdgeInsets.all(10),
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10)
              ),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Customer 2"),
                  IconButton(onPressed: (){
                    setState(() {
                      isClicked2=true;
                    });
                  }, icon: const Icon(Icons.keyboard_arrow_down))
                ],
              ),
            ):
            Container(
              padding: const EdgeInsets.all(10),
              height:550.h,
              color: LIGHT_GREY.withOpacity(.1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Customer 2"),
                      IconButton(onPressed: (){
                        setState(() {
                          isClicked2=false;
                        });
                      }, icon: const Icon(Icons.keyboard_arrow_up)
                      )
                    ],
                  ),
                  SizedBox(height: 20.h,),
                  const Text("Customer Name"),
                  SizedBox(height: 5.h,),
                  defaultText(type: TextInputType.text,borderWidth: .3),

                  SizedBox(height: 10.h,),
                  const Text("ID Number"),
                  SizedBox(height: 5.h,),
                  defaultText(type: TextInputType.text,borderWidth: .3),
                  SizedBox(height: 10.h,),
                  defaultText(type: TextInputType.text,borderWidth: 1,suffix: Icons.upload_rounded,hint: "Upload your ID")
                  ,SizedBox(height: 10.h,),
                  const Text("Reason for visit"),
                  SizedBox(height: 5.h,),
                  defaultText(type: TextInputType.text,maxLines: 4,borderWidth: .2),
                  SizedBox(height: 2.w,),
                  SizedBox(
                    height: 100.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Container(height: 40.h,
                          decoration: BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(10)),alignment: Alignment.center,child: const Text("Save",style: Styles.textStyle20,),)),
                        SizedBox(width: 5.w,),
                        Expanded(child: Container(height: 40.h,decoration: BoxDecoration(color: kPrimaryColor,borderRadius: BorderRadius.circular(10)),alignment: Alignment.center,
                          child: Text("Cancel",style: Styles.textStyle20.copyWith(color: Colors.white),),)),
                      ],
                    ),
                  )
                ],
              ),

            )










          ],
        ),
      ),
    );
  }
}