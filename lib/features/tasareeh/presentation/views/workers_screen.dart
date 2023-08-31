
import 'dart:io';

import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/core/shared_widgets/custom_buttom.dart';
import 'package:facility/core/shared_widgets/text_field.dart';
import 'package:facility/core/utilies/styles.dart';
import 'package:facility/features/tasareeh/presentation/views/widgets/customerListView.dart';
import 'package:facility/features/tasareeh/presentation/views/widgets/durationEntry.dart';
import 'package:facility/features/tasareeh/presentation/views/widgets/saveRow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../constants.dart';

File? imageFile;


class WorkersScreen extends StatefulWidget {
   WorkersScreen({super.key});

  @override
  State<WorkersScreen> createState() => _WorkersScreenState();
}

class _WorkersScreenState extends State<WorkersScreen> {
  TextEditingController workersNum = TextEditingController();
 int currentOption=1;
  @override
  Widget build(BuildContext context) {

    return SafeArea(child:  Scaffold(
      appBar: AppBarButtom2(text: 'Workers Number',),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
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
                  const Text("Please enter the number of Workers ",textAlign: TextAlign.left,
                style: Styles.textStyle20,),
               const Padding(
                  padding:  EdgeInsets.symmetric(vertical: 10),
                  child: Text('Workers Number',
                    textAlign: TextAlign.left,style: Styles.textStyle16),
                ),
                defaultText(type: TextInputType.text,borderWidth: .4,hint: '3')
              ],
            ),
            ),

            SizedBox(height: 30.h,),

            chooseType(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child:ListTile(
                    title: const Text('Yes'),
                    leading: Radio(
                        activeColor: kPrimaryColor,
                        value:1,
                        groupValue: currentOption,
                        onChanged: (value){
                          setState(() {
                            currentOption=value as int;
                          });
                        }),

                  ),
                ),
                Expanded(
                  child:ListTile(
                    title: const Text('No'),
                    leading: Radio(
                        activeColor: kPrimaryColor,
                        value:2, groupValue: currentOption, onChanged: (value){
                      setState(() {
                        currentOption=value as int;
                      });
                    }),

                  ),
                ),




              ],
            ),


            currentOption==1?
            Container(
              padding: EdgeInsets.all(20),
              height: 300.h,
              child:CustomerListView() ,
            ):
            Container(
              padding: EdgeInsets.all(20),
                height: 400.h,
              color: LIGHT_GREY.withOpacity(.1),
              child: ListView(
                children: [
                  Text('Negotiator',style: Styles.textStyle20.copyWith(color: kPrimaryColor),),
                  SizedBox(height: 15.h,),
                  const Text("Full Name"),
                  SizedBox(height: 5.h,),
                  defaultText(type: TextInputType.text,borderWidth: .3),

                  imageFile!=null?Container(height: 150.h,width: double.infinity,decoration:
                  BoxDecoration(image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: FileImage(File(imageFile!.path)) )),)
                      : SizedBox(height: 20.h,),
                  defaultText(
                      type: TextInputType.text,
                      borderWidth: 1,
                      hint: "Upload the negotiator's card",
                      suffix: Icons.upload_rounded,
                      pressed: (){
                        getImage();
                      }

                  ),
                  SizedBox(height: 5.h,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Reason of visit'),
                  ),
                  defaultText(type: TextInputType.text,borderWidth: .3,maxLines: 5),
                 SaveAndCancelRow()


                ],
              ),


            ),
            CustomButton(backgroundColor: kPrimaryColor, text: "Next", func: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const DurationEntry()));
            }, width: 350.w)
          ],     ),
      ),

    ));
  }
  void getImage()async{
    final selectedImage= await ImagePicker().pickImage(source: ImageSource.gallery);
    if(selectedImage!=null){
      setState(() {
        imageFile=File(selectedImage.path);
      });
    }
  }

}



class chooseType extends StatefulWidget {
  const chooseType({super.key});


  @override
  State<chooseType> createState() => _chooseTypeState();
}

class _chooseTypeState extends State<chooseType> {
  String dropDown="Type of work";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.all(10),
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
                  items: const [
                    DropdownMenuItem(value: 'Plumbing',child: Text("Plumbing"),),
                    DropdownMenuItem(value: 'Carpentry',child: Text("Carpentry"),),
                    DropdownMenuItem(value: 'Cultivation',child: Text("Cultivation"),),
                  ],

                  onChanged: (String?newVal){
                    setState(() {
                      dropDown=newVal!;
                    });
                  }),
            ],
          )
      ),
    );
  }
}

