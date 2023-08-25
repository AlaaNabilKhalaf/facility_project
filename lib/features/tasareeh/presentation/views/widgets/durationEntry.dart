import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:facility/constants.dart';
import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/core/shared_widgets/custom_buttom.dart';
import 'package:facility/core/utilies/styles.dart';
import 'package:facility/features/setting/presentation/views/communityinfoview.dart';
import 'package:facility/features/tasareeh/presentation/views/widgets/DateRangeContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

class DurationEntry extends StatefulWidget {

  @override
  State<DurationEntry> createState() => _DurationEntryState();
}

class _DurationEntryState extends State<DurationEntry> {




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      appBar: AppBarButtom2(text: 'Duration Entry',),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              SizedBox(height: 20.h,),
              const Text('Please enter the duration of the workers stay',style: Styles.textStyle16,),
              SizedBox(height: 20.h,),
              DateRangeContainer(),
              SizedBox(height: 20.h,),
              Container(
                padding: const EdgeInsets.all(10),
                height: 270.h,color: LIGHT_GREY.withOpacity(.2),
              child:  ListView(
                scrollDirection: Axis.vertical,
                children: [
                  const Text('Choose Time from'),
                  SizedBox(height: 10.h,),
                  ChooseTime(),
                  SizedBox(height: 10.h,),
                  Container(
                    child: DatePicker(
                      DateTime.now(),
                      height: 65.h,
                      width: 70,
                      initialSelectedDate: DateTime.now(),
                      selectionColor: kPrimaryColor,
                      selectedTextColor: Colors.white,
                      dateTextStyle: Styles.textStyle16,

                    ),
                  ),
                  SizedBox(height: 20.h,),
                  Text('To'),
                  SizedBox(height: 10.h,),
                  ChooseTime(),
                  SizedBox(height: 10.h,),
                  Container(
                    child: DatePicker(
                      DateTime.now(),
                      height: 65.h,
                      width: 70,
                      initialSelectedDate: DateTime.now(),
                      selectionColor: kPrimaryColor,
                      selectedTextColor: Colors.white,
                      dateTextStyle: Styles.textStyle16,

                    ),
                  ),
                  SizedBox(height: 20.h,),
                ],
              ),
              ),
              SizedBox(height: 20.h,),
              CustomButton(backgroundColor: kPrimaryColor, text: 'Next', func: (){}, width: double.infinity)            ],
          ),
        ),
      ),
    );
  }
}

class ChooseTime extends StatelessWidget {
  const ChooseTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: 130.w),
      child: Container(
          alignment: Alignment.center,
          height: 41.h,
          width: 111.w,
          decoration: BoxDecoration(
              color: Colors.transparent,borderRadius: BorderRadius.circular(10),
            border:
              Border.all(color: LIGHT_GREY)
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Morning',style: TextStyle(color: Colors.black),),
              Icon(Icons.keyboard_arrow_down)
            ],
          )
      ),
    );
  }
}
