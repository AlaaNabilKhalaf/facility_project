
import 'package:facility/features/home/widgets/appBarForHomePage.dart';
import 'package:facility/features/setting/presentation/views/widgets/setting_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../animation/fadeanimation.dart';

class SettingView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBarForHomePage(text: 'More information',titleBool: true,),
        body:SettingBody()
      ),
    );
  }
}




