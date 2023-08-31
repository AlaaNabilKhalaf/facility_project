import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/features/setting/presentation/views/widgets/contactUsBody.dart';
import 'package:flutter/material.dart';

class Contact_Us_View extends StatelessWidget {
var details=TextEditingController();

  Contact_Us_View({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(

        child: Scaffold(
          appBar: AppBarButton2(text: "Contact Us",),
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: ContactusBody(details: details),
          ),
        )
    );
  }
}

