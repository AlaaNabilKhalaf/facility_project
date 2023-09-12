import 'package:facility/constants.dart';
import 'package:facility/features/services_home/presentation/views/widgets/home_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/appbar2.dart';
import '../../../pay_history/presentation/views/history1_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GestureDetector(
            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> const PayHistoryView())),
            child: Container(
              alignment: Alignment.center,
            width: double.infinity,
              height: MediaQuery.of(context).size.height/16,
              decoration: BoxDecoration(
                border: Border.all(color: kPrimaryColor),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text("My Payment History",style: TextStyle(color: kPrimaryColor,fontSize: 20),),
            ),
          ),
        ),
        appBar: AppBarButton2(text: 'Pay a bill',),
        body: const HomeBody(),
      ),
    );
  }
}
