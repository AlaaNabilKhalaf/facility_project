import 'dart:io';

import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/core/utilies/styles.dart';
import 'package:facility/features/tasareeh/presentation/views/widgets/confirmData.dart';
import 'package:facility/features/tasareeh/presentation/views/widgets/saveRow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../constants.dart';
import '../../../../../core/shared_widgets/custom_buttom.dart';
import '../../../../../core/shared_widgets/text_field.dart';
import '../../../../setting/presentation/views/widgets/NextActivate.dart';
import 'durationEntry.dart';

class NoOwnerDataEntry extends StatefulWidget {
  const NoOwnerDataEntry({Key? key}) : super(key: key);

  @override
  State<NoOwnerDataEntry> createState() => _NoOwnerDataEntryState();
}

class _NoOwnerDataEntryState extends State<NoOwnerDataEntry> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarButton2(text: 'Data Entry',),
        body:Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              const Text('Please enter visitors data'),
              SizedBox(height: 10.h,),
              Container(
                padding: EdgeInsets.all(10),
                height: 500.h,
                color: LIGHT_GREY.withOpacity(.1),
                child: ListView(

                  children: [
                    Text('Visitor 1',style: Styles.textStyle20.copyWith(color: kPrimaryColor),),
                    SizedBox(height: 5,),
                    const Text('Full Name'),
                    defaultText(type: TextInputType.text,borderWidth: 1),
                    SizedBox(height: 10.h,),

                    const Text('Id Number'),
                    defaultText(type: TextInputType.text,borderWidth: 1),
                    SizedBox(height: 10.h,),


                    const Text('Phone Number'),
                    defaultText(type: TextInputType.text,borderWidth: 1),
                    SizedBox(height: 10.h,),


                    const Text('Car Number'),
                    defaultText(type: TextInputType.text,borderWidth: 1),
                    SizedBox(height: 10.h,),

                    const Text('Kinship'),
                    defaultText(type: TextInputType.text,borderWidth: 1),

                    imageFile!=null?Container(height: 150.h,width: double.infinity,decoration:
                    BoxDecoration(image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: FileImage(File(imageFile!.path)) )),)
                        : SizedBox(height: 20.h,),
                    defaultText(
                        type: TextInputType.text,
                        borderWidth: 1,
                        hint: "Upload your Id",
                        suffix: Icons.upload_rounded,
                        pressed: (){
                          getImage();
                        }

                    ),


                    imageFile!=null?Container(height: 150.h,width: double.infinity,decoration:
                    BoxDecoration(image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: FileImage(File(imageFile!.path)) )),)
                        : SizedBox(height: 20.h,),
                    defaultText(
                        type: TextInputType.text,
                        borderWidth: 1,
                        hint: "Upload your Id",
                        suffix: Icons.upload_rounded,
                        pressed: (){
                          getImage();
                        }

                    ),


                    SaveAndCancelRow(),


                  ],
                ),
              ),
              SizedBox(height: 15,),
              CustomButton(backgroundColor: kPrimaryColor, text: 'Next',
                  width: double.infinity
                  ,func: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ConfirmData()));
                  })
            ],
          ),
        ),
      ),
    );
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
