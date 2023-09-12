import 'package:facility/constants.dart';
import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/features/request_a_service/inside_services/plumbing/presentation/views/paymentScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/shared_widgets/custom_buttom.dart';
import '../../../../../../core/utilies/styles.dart';


enum FlatNumberType {Donwloadable,Deliverable}

class AddressScreen extends StatefulWidget {
  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {



List<String> flats=[
'flat1',
  'flat2',
  'flat3'
];
List<String>flatsNumbers=[
  'flat1',
  'flat2',
  'flat3'
];
bool isClicked=false;
List<int> valueNumber=[
1,
  2, 3
];

dynamic _selectedValue = 1;
List<String> wehda=[
  'Madinty',
  'El Rahab',
  'El Noor',

];
List<String> wehdaNumber=[
  '01235467576',
  '01075758587',
  '01145648545',

];

  @override
  Widget build(BuildContext context) {
    final customHeight=MediaQuery.of(context).size.height;
    final customWidth=MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      appBar: AppBarButton2(text: 'Address',),
      body:SizedBox(
        height: customHeight,
        width: customWidth,
        child: Column(
          children: [
            SizedBox(
              height: customHeight*.78,
              child: ListView.separated(itemBuilder: (context,index){
               return Container(
                  color: LIGHT_GREY.withOpacity(.1),
                  height: customHeight*.15,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Radio(
                            activeColor: kPrimaryColor,
                            value: valueNumber[index],
                            groupValue: _selectedValue,
                            onChanged: (value) {
                              setState(() {
                                _selectedValue = value;
                              });
                            },
                          ),
                          const SizedBox(width: 5,),
                          Text(
                            flatsNumbers[index],
                            style: Styles.textStyle22.copyWith(fontSize: 14),
                          ),
                        ],
                      ),
                      Row(children: [
                        SizedBox(width: 30.w,),
                        Icon(Icons.location_on),
                        SizedBox(width: 5.w,),
                        Text(wehda[index]),

                      ],),
                      Row(children: [
                        SizedBox(width: 30.w,),
                        Icon(Icons.phone),
                        SizedBox(width: 5.w,),
                        Text(wehdaNumber[index]),

                      ],),

                    ],
                  ) ,
                );
              }, separatorBuilder: (context,index){
                return SizedBox(height: 20.h,);
              }, itemCount: flats.length),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(
                  width: double.infinity,
                  backgroundColor: kPrimaryColor, text: 'Next', func: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> PaymentServicesScreen()));
              }),
            )
          ],
        ),
      ) ,
    ));
  }
}

