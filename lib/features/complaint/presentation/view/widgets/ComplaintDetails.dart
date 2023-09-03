import 'dart:io';

import 'package:facility/constants.dart';
import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/core/shared_widgets/custom_buttom.dart';
import 'package:facility/core/shared_widgets/text_field.dart';
import 'package:facility/core/utilies/styles.dart';
import 'package:facility/features/complaint/presentation/view/widgets/imagefun.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../home/views/homePage.dart';
import '../../../../setting/presentation/views/widgets/NextActivate.dart';
import '../../../../setting/presentation/views/widgets/customAlert.dart';

class ComplaintDetails extends StatefulWidget {
   ComplaintDetails({
     required this.title
});


  String? title;

  @override
  State<ComplaintDetails> createState() => _ComplaintDetailsState();
}

class _ComplaintDetailsState extends State<ComplaintDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarButton2(text: '${widget.title}',),
        body:  const ComplaintDetailsBody(),
      ),
    );
  }
}

class ComplaintDetailsBody extends StatelessWidget {
  const ComplaintDetailsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Please enter reason of complaint',style: Styles.textStyle16,),
          SizedBox(height: 10.h,),
          defaultText(type: TextInputType.text,borderWidth: .2,maxLines: 6,hint: 'Enter Complaint'),
          SizedBox(height: 10.h,),
          PickImgFun(),
          Spacer(),
          Padding(
            padding:  EdgeInsets.only(bottom: 10.h),
            child: CustomButton(backgroundColor: kPrimaryColor, text: 'Confirm', func: (){
              showDialog(context: context, builder: (context)=>Custom_Alert(widget: const HomePage(),
                txt:  Text("         Complaint\nSubmitted successfully",
                  style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),),
              ),
              );
            },width: double.infinity,),
          )

        ],
      ),
    );
  }
}
