import 'package:facility/constants.dart';
import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/core/shared_widgets/custom_buttom.dart';
import 'package:facility/core/shared_widgets/text_field.dart';
import 'package:facility/core/utilies/styles.dart';
import 'package:facility/features/tasareeh/presentation/views/widgets/durationEntry.dart';
import 'package:facility/features/tasareeh/presentation/views/widgets/saveRow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VisitorsDataEntry extends StatelessWidget {
   VisitorsDataEntry({Key? key}) : super(key: key);

   var nameController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBarButton2(text: 'Data Entry',),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: VisitorsDataEntryBody(nameController: nameController),
          ),
        )
    );
  }
}

class VisitorsDataEntryBody extends StatelessWidget {
  const VisitorsDataEntryBody({
    super.key,
    required this.nameController,
  });

  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Text('Please enter visitors data'),
        SizedBox(height: 10.h,),
        Container(
          padding: EdgeInsets.all(10),
          height: 490.h,
          color: LIGHT_GREY.withOpacity(.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Visitor 1',style: Styles.textStyle20.copyWith(color: kPrimaryColor),),
              SizedBox(height: 5,),
              const Text('Full Name'),
              defaultText(type: TextInputType.text,borderWidth: 1,controller: nameController),
              SizedBox(height: 10.h,),

              const Text('Id Number'),
              defaultText(type: TextInputType.text,borderWidth: 1),
              SizedBox(height: 10.h,),


              const Text('Phone Number'),
              defaultText(type: TextInputType.text,borderWidth: 1),
              SizedBox(height: 10.h,),


              const Text('Car Number'),
              defaultText(type: TextInputType.text,borderWidth: 1),

              const SaveAndCancelRow(),


            ],
          ),
        ),
        const SizedBox(height: 15,),
        CustomButton(backgroundColor: kPrimaryColor, text: 'Next',
            width: double.infinity,func: (){
          if(nameController.text==null){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please fill Required Data')));
          }else{
            Navigator.push(context, MaterialPageRoute(builder: (context)=>DurationEntry()));
          }
        })
      ],
    );
  }
}
