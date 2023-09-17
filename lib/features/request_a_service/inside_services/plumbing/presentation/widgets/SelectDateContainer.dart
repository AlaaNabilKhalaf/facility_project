import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utilies/styles.dart';

class SelectDateContainer extends StatefulWidget {
  const SelectDateContainer({super.key});

  @override
  State<SelectDateContainer> createState() => _SelectDateContainerState();
}

class _SelectDateContainerState extends State<SelectDateContainer> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(17),
      height: 190.h,
      color: LIGHT_GREY.withOpacity(.2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Select the date",style: Styles.textStyle16,),
          SizedBox(height: 5.h,),
          GestureDetector(
            onTap: () {
              _selectDate(context);

            },
            child: Container(
                alignment: Alignment.center,
                height: 41.h,
                width: 141.w,
                decoration: BoxDecoration(
                    color: LIGHT_GREY,borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("${selectedDate.toLocal()}".split(' ')[0],style: const TextStyle(color: Colors.white),),
                    const Icon(Icons.arrow_drop_down_sharp,color: Colors.white,)
                  ],
                )
            ),
          ),
          SizedBox(height: 15.h,),
          Container(
            // child: DatePicker(
            //   DateTime.now(),
            //   height: 80,
            //   width: 70,
            //   initialSelectedDate: DateTime.now(),
            //   selectionColor: kPrimaryColor,
            //   selectedTextColor: Colors.white,
            //   dateTextStyle: Styles.textStyle16,
            //
            // ),
          ),





        ],
      ),
    );
  }
}
