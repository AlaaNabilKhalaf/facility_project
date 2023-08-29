import 'package:facility/constants.dart';
import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/core/shared_widgets/custom_buttom.dart';
import 'package:facility/core/utilies/styles.dart';
import 'package:facility/features/setting/presentation/views/widgets/NextActivate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Custom_qr_container.dart';

class Activate_Qr extends StatelessWidget {
  const Activate_Qr({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarButtom2(text: "Activate QR code ",),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            children:  [
              const Text("Entrance Activation",style: TextStyle(color: LIGHT_GREY),),
              SizedBox(height: 10.h,),
              const Text("Please download the following:",style: Styles.textStyle20,),
              SizedBox(height: 10.h,),
              const Text("_Personal photo of the unit owner",style: Styles.textStyle16),
              SizedBox(height: 10.h,),
              const Text("_First degree relatives \n ( Husband - Wife -Children - Father - Mother )",style: Styles.textStyle16),
              SizedBox(height: 10.h,),
              const Text("_Photo copy of ID card",style: Styles.textStyle16),
              SizedBox(height: 20.h,),
              Custom_QR_Container(txt: 'MG Development',),
              SizedBox(height: 20.h,),
              Custom_QR_Container(txt: '+01023457762',),
              SizedBox(height: 20.h,),
              Custom_QR_Container(txt: 'LoaaHany209@gmail.com',),
               SizedBox(height: 150.h,),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: CustomButton(backgroundColor: kPrimaryColor, text: "Next",
                    func: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=>const Next_Activate()));
                    }, width: double.infinity,
                height: 55.h,),
              )

            ],
          ),
        ),
      ),
    );
  }
}