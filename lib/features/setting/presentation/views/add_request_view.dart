
import 'package:facility/features/setting/presentation/views/widgets/AddRequestBody.dart';
import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/appbar2.dart';

class Add_Request_View extends StatefulWidget {
  const Add_Request_View({super.key});


  @override
  State<Add_Request_View> createState() => _Add_Request_ViewState();
}

class _Add_Request_ViewState extends State<Add_Request_View> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarButtom2(text: "Add Request",),
        body: const Add_Request_Body()
      ),
    );
  }
}




