import 'package:facility/constants.dart';
import 'package:facility/features/pay_history/presentation/views/widgets/list_view_pay.dart';
import 'package:facility/features/services_home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

import '../../../../services_home/presentation/views/widgets/search.dart';

class HistoryBody extends StatefulWidget {
  const HistoryBody({super.key});

  @override
  State<HistoryBody> createState() => _HistoryBodyState();
}

class _HistoryBodyState extends State<HistoryBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0 , vertical: 10),
        child: Column(
          children: [
            const Search(text: 'Search for a specific payment'),
            SizedBox(
                height: MediaQuery.of(context).size.height*.62, child: ListPay()),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height/16,

              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric( horizontal: 40 , vertical: 8),
              decoration: BoxDecoration(
                  // color: bgcolor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: kPrimaryColor)),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeView()));
                },
                child: const Text(
                  'Back to home',
                    style : TextStyle(color: kPrimaryColor,fontSize: 20)                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
