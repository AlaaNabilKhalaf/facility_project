import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/features/tasareeh/presentation/views/widgets/novisitorsunitdetails.dart';
import 'package:facility/features/tasareeh/presentation/views/widgets/yesVisitorbody.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';
import '../../../../../core/shared_widgets/text_field.dart';
import '../../../../../core/utilies/styles.dart';

class VisitorsNumber extends StatefulWidget {
   VisitorsNumber({Key? key}) : super(key: key);

  @override
  State<VisitorsNumber> createState() => _VisitorsNumberState();
}

class _VisitorsNumberState extends State<VisitorsNumber> {
bool? isClicked;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarButton2(text: 'Visitors Number',),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                height: 170.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color:LIGHT_GREY.withOpacity(.1)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text("Please enter Visitors number ",textAlign: TextAlign.left,
                        style:Styles.textStyle20),
                    const Padding(
                      padding:  EdgeInsets.symmetric(vertical: 10),
                      child: Text('Visitors Number',
                        textAlign: TextAlign.left,style:Styles.textStyle16,
                      ),
                    ),
                    defaultText(type: TextInputType.text,borderWidth: .3),
                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              Container(
                padding: EdgeInsets.all(10),
                height: 100.h,
                color: LIGHT_GREY.withOpacity(.1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Is there an owner ?',style: Styles.textStyle16,),
                    SizedBox(height: 30.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Yes'),
                        GestureDetector(

                            onTap: (){
                            setState(() {
                              isClicked=true;
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const YesVisitorBody()));

                            });
                            },
                            child: Icon(
                                isClicked==false?Icons.circle_outlined:Icons.check_circle_rounded)),
                        SizedBox(width: 70.w,),
                        Text('No'),
                        GestureDetector(
                            onTap: (){
                              setState(() {
                                isClicked=false;
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>NoVisitorsUnitDetails()));
                              });
                            },
                            child: Icon(isClicked==false?Icons.check_circle_rounded:Icons.circle_outlined))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
