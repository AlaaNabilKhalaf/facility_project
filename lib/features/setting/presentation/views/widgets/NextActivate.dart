import 'package:facility/constants.dart';
import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/core/shared_widgets/custom_buttom.dart';
import 'package:facility/features/home/views/homePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../core/shared_widgets/text_field.dart';
import 'customAlert.dart';
import 'dart:io';

File? imageFile;

class Next_Activate extends StatefulWidget {
  const Next_Activate({super.key});


  @override
  State<Next_Activate> createState() => _Next_ActivateState();
}

class _Next_ActivateState extends State<Next_Activate> {
  var details=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBarButtom2(text: "Activate QR code",),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: ListView(
          children: [
            SizedBox(height: 10.h,),
            defaultText(
                controller: details,
                type: TextInputType.text,
                borderWidth: .3,
                hint: "Provide any extra details",
                maxLines: 9

            ),
            imageFile!=null?Container(height: 150.h,width: double.infinity,decoration:
            BoxDecoration(image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: FileImage(File(imageFile!.path)) )),)
                : SizedBox(height: 20.h,),

            defaultText(
              type: TextInputType.text,
            borderWidth: .3,
              hint: "Send Attachment",
               suffix: Icons.upload_rounded,
              pressed: (){
                getImage();
              }

            ),
            SizedBox(height: 7.h,),
            const Text("A maximum of 4 images can be attached",style: TextStyle(color: LIGHT_GREY),),

            SizedBox(height: 20.h,),
            defaultText(
                type: TextInputType.text,
                borderWidth: .3,
                hint: "Send Attachment",
                suffix: Icons.mic

            ),
            SizedBox(height: 7.h,),
            const Text("Please provide extra details through voice recording under 30 seconds"
                ,style: TextStyle(color: LIGHT_GREY),),

              SizedBox(height: 110.h,),
            CustomButton(backgroundColor: kPrimaryColor, text: "Request", func: (){
              showDialog(context: context, builder: (context)=>Custom_Alert(widget: const HomePage(), txt: const Text("Request Submitted successfully"),
                ),
              );
            },
                width: double.infinity,height: 55.h,)

          ],
        ),
      ),
    )


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

