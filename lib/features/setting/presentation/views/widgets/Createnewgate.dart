
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../../constants.dart';
import '../../../../../core/shared_widgets/custom_buttom.dart';
import '../../../../../core/shared_widgets/text_field.dart';
import 'fully_gate_notification.dart';
import 'inputNewGate.dart';

class Create_New_Gate extends StatefulWidget {
  const Create_New_Gate({super.key});


  @override
  State<Create_New_Gate> createState() => _Create_New_GateState();
}

class _Create_New_GateState extends State<Create_New_Gate> {
var unitNameController=TextEditingController();

var requestDataController=TextEditingController();

var serviceProviderController=TextEditingController();

var detailsController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10.h,),
        const Text("Create new gate notification",style: TextStyle(color: Colors.black),),
        SizedBox(height: 15.h,),
        InputNewGate(text: 'Select a Unit', controller: unitNameController, ontab:(){},


        ),
        SizedBox(height: 15.h,),
        InputNewGate(text: 'Select request date', controller: requestDataController, ontab: () {

            setState(() {
              showDatePicker(context: context, initialDate: DateTime(2023),
                  firstDate: DateTime(2023), lastDate: DateTime(2090)).then((value){
                requestDataController.text=DateFormat.yMMMd().format(value!).toString();
              });
            });

        },   ),
        SizedBox(height: 15.h,),
        InputNewGate(text: 'Service provider', controller: serviceProviderController, ontab: ( ) {  }, ),
        SizedBox(height: 15.h,),
        defaultText(
            controller: detailsController,
            type: TextInputType.text,
            borderWidth: .3,
            hint: "Extra details",
            maxLines: 9


        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: CustomButton(backgroundColor: kPrimaryColor, text: "Notify Gate",
            func: () {

              Navigator.push(context,PageTransition(child: Fully_Gate_Notification(
                name: unitNameController.text, date: requestDataController.text,
                details: detailsController.text, service: serviceProviderController.text,

              ),
                  type: PageTransitionType.topToBottom,duration: const Duration(seconds: 1)));
            }, width: double.infinity,height: 55.h,),
        )
      ],
    );
  }
}
//sara tany
////sara yasser

