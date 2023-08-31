import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/core/shared_widgets/custom_buttom.dart';
import 'package:facility/core/utilies/styles.dart';
import 'package:facility/features/tasareeh/presentation/views/papers_screen.dart';
import 'package:facility/features/tasareeh/presentation/views/workers_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';



class WehdaDetails extends StatefulWidget {
  @override
  State<WehdaDetails> createState() => _WehdaDetailsState();
}

class _WehdaDetailsState extends State<WehdaDetails> {
  String dropDown="Type of work";
  bool isVisible=false;

  List <Widget> visibleWidgets=[
    Container(color: LIGHT_GREY,height: 100,),
    Container(color: Colors.red,height: 100,)
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarButton2(text: 'Unit Details',),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 10.w),
                child: Text('Unit Name'),
              ),

             Padding(
            padding:  EdgeInsets.all(10),
            child: Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                height: 60.h,
                width: 100.w,
                decoration: BoxDecoration(
                    color: Colors.transparent,borderRadius: BorderRadius.circular(10),
                    border:
                    Border.all(color: LIGHT_GREY)
                ),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(dropDown),
                    DropdownButton(

                        icon: const Icon(Icons.keyboard_arrow_down),
                        items:  [
                          DropdownMenuItem(value: 'Madinty',
                            child: Text("Madinty"),),
                          DropdownMenuItem(value: 'El Rahab',child: Text("El Rahab"),),
                          DropdownMenuItem(value: 'El shrouk',child: Text("El shrouk"),),
                          DropdownMenuItem(value: 'El Salam',child: Text("El Salam"),),
                        ],

                        onChanged: (String?newVal){
                          setState(() {
                            dropDown=newVal!;
                            isVisible=true;
                          });
                        }),
                  ],
                )
            ),
          ),
             SizedBox(height: 10.h,),


              isVisible==false?SizedBox(height: 420.h,):
           UnitDetails(dropDown: dropDown),
            SizedBox(height: 270.h,),
            CustomButton(backgroundColor: kPrimaryColor, text: 'Next', func: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>WorkersScreen()),);
            },width: double.infinity,

            )
            ],
          ),
        ),
      ),
    );
  }
}

class UnitDetails extends StatelessWidget {
  const UnitDetails({
    super.key,
    required this.dropDown,
  });

  final String dropDown;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 150.h,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: LIGHT_GREY.withOpacity(.2),
        ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text('Full Name',style: Styles.textStyle16.copyWith(color: LIGHT_GREY),),
                SizedBox(height: 10.h,),
                Text(dropDown=='Madinty'?'Sara Yasser':'Loaa Hany')
              ],
            ),
            Column(
              children: [
                Text('Unit Number',style: Styles.textStyle16.copyWith(color: LIGHT_GREY)),
                SizedBox(height: 10.h,),
                Text(dropDown=='Madinty'?'123':'111')
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text('Unit Type',style: Styles.textStyle16.copyWith(color: LIGHT_GREY),),
                SizedBox(height: 10.h,),
                const Text('Partment')
              ],
            ),
            Column(
              children: [
                Text('Builder Number',style: Styles.textStyle16.copyWith(color: LIGHT_GREY)),
                SizedBox(height: 10.h,),
                Text(dropDown=='Madinty'?'2':'21'),
              ],
            ),
          ],
        ),
      ],
    )

    );
  }
}
// class chooseUnit extends StatefulWidget {
//   const chooseUnit({super.key});
//
//
//   @override
//   State<chooseUnit> createState() => _chooseUnitState();
// }
//
// class _chooseUnitState extends State<chooseUnit> {
//   String dropDown="Type of work";
//
//
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }