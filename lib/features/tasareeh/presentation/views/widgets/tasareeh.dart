
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:facility/features/tasareeh/presentation/views/widgets/tasareehSuccess.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';
import '../../../../../core/shared_widgets/appbar2.dart';
import '../../../../../core/shared_widgets/custom_buttom.dart';
import '../../../../../core/shared_widgets/text_field.dart';
import '../../../../../core/utilies/styles.dart';

class Tasareeh_View extends StatefulWidget {
  const Tasareeh_View({super.key});


  @override
  State<Tasareeh_View> createState() => _Tasareeh_ViewState();
}

class _Tasareeh_ViewState extends State<Tasareeh_View> {
  var nameController=TextEditingController();

  var idController=TextEditingController();

  var phoneNumberController=TextEditingController();

  var plateNumberController=TextEditingController();
// String date=DateFormat.yMMMd().format(DateTime.now());


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
    return SafeArea(child: Scaffold(
      appBar: AppBarButtom2(text: "Visitor",),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            SizedBox(height: 10.h,),
               const Text("Enter your details to request a visit",style: Styles.textStyle16,),
            SizedBox(height: 10.h,),
            defaultText(type: TextInputType.text,hint: "Enter your full name",
                controller:nameController ,borderWidth: 0.1,
            ),
            SizedBox(height: 10.h,),
            defaultText(type: TextInputType.text,borderWidth: .1,hint: "Enter Your ID",controller: idController),

            SizedBox(height: 10.h,),
            defaultText(type: TextInputType.text,borderWidth: .1,hint: "Enter Your Phone Number",controller: phoneNumberController),

            SizedBox(height: 10.h,),
            defaultText(type: TextInputType.text,borderWidth: .1,hint: "Enter Your Plate Number",controller: plateNumberController),

            SizedBox(height: 10.h,),

            Container(
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
                    child: DatePicker(
                      DateTime.now(),
                      height: 80.h,
                      width: 70,
                      initialSelectedDate: DateTime.now(),
                      selectionColor: kPrimaryColor,
                      selectedTextColor: Colors.white,
                      dateTextStyle: Styles.textStyle16,

                    ),
                  )




                ],
              ),
            ),
SizedBox(height: 20.h,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: CustomButton(backgroundColor: kPrimaryColor, text: "Request a visit", func: (){

Navigator.push(context, MaterialPageRoute(builder: (context)=>const Tasreeh_Success()));
              }, width: double.infinity,height: 55.h,),
            )

          ],
        ),
      ),

    ));
  }
}

// Create week date picker with passed parameters
//sara and alaa