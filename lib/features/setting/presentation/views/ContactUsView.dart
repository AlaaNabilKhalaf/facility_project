import 'package:facility/constants.dart';
import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/core/shared_widgets/custom_buttom.dart';
import 'package:facility/core/shared_widgets/text_field.dart';
import 'package:facility/features/setting/presentation/views/widgets/Custom_qr_container.dart';
import 'package:facility/features/setting/presentation/views/widgets/contactUsBody.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Contact_Us_View extends StatelessWidget {
var details=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(

        child: Scaffold(
          appBar: AppBarButtom2(text: "Contact Us",),
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: ContactusBody(details: details),
          ),
        )
    );
  }
}

