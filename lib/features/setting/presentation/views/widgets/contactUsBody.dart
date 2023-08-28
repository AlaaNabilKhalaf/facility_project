import 'package:facility/core/utilies/styles.dart';
import 'package:facility/features/home/views/homePage.dart';
import 'package:facility/features/setting/presentation/views/widgets/customAlert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';
import '../../../../../core/shared_widgets/custom_buttom.dart';
import '../../../../../core/shared_widgets/text_field.dart';
import 'Custom_qr_container.dart';

class ContactusBody extends StatelessWidget {
  const ContactusBody({
    super.key,
    required this.details,
  });

  final TextEditingController details;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Custom_QR_Container(txt: "Mg Development"),
        SizedBox(height: 15.h,),
        Custom_QR_Container(txt: "+01006671478"),
        SizedBox(height: 15.h,),
        Custom_QR_Container(txt: "Loaahany@gmail.com"),
        SizedBox(height: 15.h,),
        defaultText(type: TextInputType.text,
            controller: details,
            maxLines: 7,
            borderWidth: .3,
            hint: "Provide any extra details"
        ),
        SizedBox(height: 160.h,),
        CustomButton(backgroundColor: kPrimaryColor,
          text: "Submit", func: (){
            showDialog(context: context, builder: (context)=>Custom_Alert(widget:const HomePage(),
              txt: Column(
                children: [
                  const Text("Message sent successfully"),
                  SizedBox(height: 9.h,),
                  Text("We will contact you shortly",style: Styles.textStyle12.copyWith(color: LIGHT_GREY),)
                ],
              )
            )
            );
          }, width: double.infinity,height: 55.h,)

      ],
    );
  }
}
