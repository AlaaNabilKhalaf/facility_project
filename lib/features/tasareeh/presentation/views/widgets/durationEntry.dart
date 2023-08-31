import 'package:facility/constants.dart';
import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/core/shared_widgets/custom_buttom.dart';
import 'package:facility/core/utilies/styles.dart';
import 'package:facility/features/tasareeh/presentation/views/widgets/DateRangeContainer.dart';
import 'package:facility/features/tasareeh/presentation/views/widgets/payWay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'chooseMorning.dart';
import 'choosetime.dart';

class DurationEntry extends StatefulWidget {
  const DurationEntry({super.key});


  @override
  State<DurationEntry> createState() => _DurationEntryState();
}

class _DurationEntryState extends State<DurationEntry> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      appBar: AppBarButton2(text: 'Duration Entry',),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              SizedBox(height: 20.h,),
              const Text('Please enter the duration of the workers stay',style: Styles.textStyle16,),
              SizedBox(height: 20.h,),
              const DateRangeContainer(),
              SizedBox(height: 20.h,),
              Container(
                padding: const EdgeInsets.all(10),
                height: 270.h,color: LIGHT_GREY.withOpacity(.2),
              child:  ListView(
                scrollDirection: Axis.vertical,
                children: [
                  const Text('Choose Time from'),
                  SizedBox(height: 10.h,),
                  const ChooseMorning(),
                  SizedBox(height: 10.h,),
                  const ChooseTime(),
                  SizedBox(height: 20.h,),
                  const Text('To'),
                  SizedBox(height: 10.h,),
                  const ChooseMorning(),
                  const ChooseTime()

                ],
              ),
              ),
              SizedBox(height: 20.h,),
              CustomButton(backgroundColor: kPrimaryColor, text: 'Next', func: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const PayWay()));
              }, width: double.infinity)            ],
          ),
        ),
      ),
    );
  }
}




