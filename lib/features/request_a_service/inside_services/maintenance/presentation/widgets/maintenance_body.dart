import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../services_home/presentation/views/widgets/search.dart';
import '../../../home_keeping/presentation/widgets/custom_list_view_text_and_button.dart';

class MaintenanceBody extends StatefulWidget {
  const MaintenanceBody({super.key});

  @override
  State<MaintenanceBody> createState() => _MaintenanceBodyState();
}

class _MaintenanceBodyState extends State<MaintenanceBody> {
  @override
  Widget build(BuildContext context) {
    return  const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding : EdgeInsets.only(bottom: 15),
                    child: Search(
                      text: "Search",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Text("Select What you need",
                      style: TextStyle(
                          fontSize: 18
                      ),),
                  ),
                  CustomListviewTextAndButton(
                    dateListUP: [
                      "Civil and Architectural ",
                      "General & Public Area",
                      "Shooter not working",
                      "Other",
                    ],
                    dateListDown: [
                      '100 EGP For repairing',
                      '100 EGP For repairing',
                      '100 EGP For repairing',
                      '100 EGP For repairing',
                    ],


                  )
                ],
              )
          ),
        )
      ],
    );
  }
}
