import 'package:facility/constants.dart';
import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/features/setting/presentation/views/widgets/Activate_qr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Enterance_Activation extends StatelessWidget {
  const Enterance_Activation({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarButtom2(text: "Entrance Activation",),
        body: Column(
          children: [
            SizedBox(height: 20.h,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: const EdgeInsets.all(20),
                alignment: Alignment.center,
                height: 85.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: LIGHT_GREY.withOpacity(.2),

                ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Activate QR code",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                    InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Activate_Qr()));
                        },

                        child: Image.asset("assets/icons/arrow.png"))
                  ],
                ) ,
              ),
            )
          ],
        ),
      ),
    );
  }
}
