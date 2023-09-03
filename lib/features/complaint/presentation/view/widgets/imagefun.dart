import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../core/shared_widgets/text_field.dart';
import '../../../../setting/presentation/views/widgets/NextActivate.dart';

class PickImgFun extends StatefulWidget {
   PickImgFun({required this.hintTxt});
String? hintTxt;

  @override
  State<PickImgFun> createState() => _PickImgFunState();
}

class _PickImgFunState extends State<PickImgFun> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        imageFile!=null?Container(height: 150.h,width: double.infinity,decoration:
        BoxDecoration(image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: FileImage(File(imageFile!.path)) )),)
            : SizedBox(height: 20.h,),
        defaultText(
            type: TextInputType.text,
            borderWidth: 1,
            hint: widget.hintTxt,
            suffix: Icons.upload_rounded,
            pressed: (){
              getImage();
            }

        ),

      ],
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
