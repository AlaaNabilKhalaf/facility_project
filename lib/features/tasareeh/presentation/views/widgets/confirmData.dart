import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';
import '../../../../../core/shared_widgets/custom_buttom.dart';
import '../../../../home/views/homePage.dart';

class ConfirmData extends StatelessWidget {
  const ConfirmData({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarButton2(text: 'Success',),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(height: 70.h,),
              Stack(
                clipBehavior: Clip.none,
                alignment: AlignmentDirectional.topCenter,
                children: [
                  Container(
                    width: double.infinity,
                    height: 155.h,
                    decoration: BoxDecoration(
                        color: LIGHT_GREY.withOpacity(.3),

                        borderRadius: BorderRadius.circular(10)
                    ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Your Request sent Successfully",style:TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),
                        SizedBox(height: 15.h,),
                        Text("Your QR will be sent to your\n         whatsApp soon",style:TextStyle(fontSize: 15.sp),)
                      ],
                    ),
                  ),
                  Positioned(
                    top: -50.h,
                    child: Container(
                      height: 90,
                      width: 100,
                      decoration: const BoxDecoration(

                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage(
                              'assets/icons/correct.png',
                            )),
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomButton(backgroundColor: kPrimaryColor, text:"Back To Home", func: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
                }, width: double.infinity,height: 55.h,),
              )










            ],
          ),
        ),
      ),
    );
  }
}
