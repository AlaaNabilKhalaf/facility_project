import 'package:facility/constants.dart';
import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/core/shared_widgets/text_field.dart';
import 'package:facility/core/utilies/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PayWay extends StatelessWidget {
  const PayWay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarButtom2(text: 'Duration Entry',),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
             Text("Please select your payment method"),
              SizedBox(height: 10.h,),
              Container(
                padding: EdgeInsets.all(15),
                height: 
                300.h,
                color: LIGHT_GREY.withOpacity(.1),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.stop_circle_sharp),
                        SizedBox(width: 10,),
                        Text("Visa",style: Styles.textStyle16,)
                      ],
                    ),
SizedBox(height: 10.h,),
                    const Text('Visa card'),
                    SizedBox(height: 10.h,),
                    defaultText(type: TextInputType.text,borderWidth: .2,suffix: Icons.add_card_outlined),
                    SizedBox(height: 20.h,),
                    SizedBox(
                      height: 100.h,
                      child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Cvv'),
                                  SizedBox(height: 5,),
                                  defaultText(type: TextInputType.text,borderWidth: .3,hint: 'cvv')
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              const Text('End Date'),
                              SizedBox(height: 5,),
                              defaultText(type: TextInputType.text,borderWidth: .3, ),
                            ],),
                          )
                        ],
                      ),
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
