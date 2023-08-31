import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/core/shared_widgets/custom_buttom.dart';
import 'package:facility/core/utilies/styles.dart';
import 'package:facility/features/tasareeh/presentation/views/papers_screen.dart';
import 'package:facility/features/tasareeh/presentation/views/widgets/NoownerdataEntry.dart';
import 'package:facility/features/tasareeh/presentation/views/widgets/unitDetails.dart';
import 'package:facility/features/tasareeh/presentation/views/widgets/visitorsDateEntry.dart';
import 'package:facility/features/tasareeh/presentation/views/workers_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';



class NoVisitorsUnitDetails extends StatefulWidget {
  @override
  State<NoVisitorsUnitDetails> createState() => _NoVisitorsUnitDetailsState();
}

class _NoVisitorsUnitDetailsState extends State<NoVisitorsUnitDetails> {
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
                child: const Text('Unit Name'),
              ),

              Padding(
                padding:  const EdgeInsets.all(10),
                child: Container(
                    padding: const EdgeInsets.all(10),
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
                            items:  const[
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
              UnitVisitorsDetails(dropDown: dropDown),
              SizedBox(height: 270.h,),
              CustomButton(backgroundColor: kPrimaryColor, text: 'Next', func: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>NoOwnerDataEntry()),);
              },width: double.infinity,

              )
            ],
          ),
        ),
      ),
    );
  }
}

