
import 'package:facility/features/setting/presentation/views/ContactUsView.dart';
import 'package:facility/features/setting/presentation/views/communityinfoview.dart';
import 'package:facility/features/setting/presentation/views/helpcenterview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:wave_transition/wave_transition.dart';

import '../Gate_notification.dart';
import '../add_request_view.dart';
import 'card_setting.dart';
import 'listmodel_setting.dart';

class List_Setting extends StatelessWidget {

  final List<ListModelSetting> items=[
    ListModelSetting(icon: Icons.garage_outlined, text:" Gate Notification" ),
    ListModelSetting(icon: Icons.message, text:" Add Request" ),
    ListModelSetting(icon: Icons.question_mark_outlined, text:"Community info" ),
    ListModelSetting(icon: Icons.info, text:"Help center" ),
    ListModelSetting(icon: Icons.phone, text:"Contact us" ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450.h,
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context,index)=>
            GestureDetector(

              child: card_setting(
                  icon:items[index].icon,
                  txt: items[index].text),

              onTap: (){
              index==0?
              Navigator.push(
                  context,
                  WaveTransition(child: Empty_Gate_Notification_View(), center: FractionalOffset(0.90,0.90),
                      duration: const Duration(milliseconds: 2000),
                  settings: const RouteSettings(arguments: "it works")
                  )

              )
                  :index==1? Navigator.push(context, PageTransition(child: Add_Request_View(),
                  type: PageTransitionType.leftToRightWithFade,duration: const Duration(seconds: 1))):
                index==2? Navigator.push(context, PageTransition(child: const Community_Info(),
                type: PageTransitionType.leftToRightWithFade,duration: const Duration(seconds: 1)))
                    : index==3? Navigator.push(context, PageTransition(child: const HelpCenter(),
                    type: PageTransitionType.leftToRightWithFade,duration: const Duration(seconds: 1)))
                    : Navigator.push(context, PageTransition(child: Contact_Us_View(),
                  type: PageTransitionType.topToBottom,duration: const Duration(seconds: 1)));
              },

//  Navigator.push(context,PageTransition(child: SearchScreen(), type: PageTransitionType.leftToRightWithFade,duration:const Duration(seconds: 1)))
            ),

      ),
    );
  }
}
