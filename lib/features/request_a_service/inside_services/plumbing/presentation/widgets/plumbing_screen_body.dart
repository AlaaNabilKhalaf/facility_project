import 'package:facility/core/utilies/assets.dart';
import 'package:facility/features/request_a_service/inside_services/plumbing/presentation/widgets/selectproviderList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utilies/styles.dart';
import '../../../../../services_home/presentation/views/widgets/search.dart';
import '../../../home_keeping/presentation/widgets/custom_list_view_text_and_button.dart';

class PlumbingScreenBody extends StatefulWidget {
  const PlumbingScreenBody({super.key});

  @override
  State<PlumbingScreenBody> createState() => _PlumbingScreenBodyState();
}

class _PlumbingScreenBodyState extends State<PlumbingScreenBody> {
  List<String> titles = [
    "Tap Repair",
    "Toilet pot removal",
    "Waste pipe",
    "Wash basin leakage",
    "Hot and Cold water",
  ];
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
                    "All areas of house",
                    "Carton and Garbage Removing",
                    "Elevator Cleaning",
                    "Entrance Cleaning",
                    "Landscaping",
                    "Parking Cleaning",
                    "Stairs Cleaning",
                  ],
                  dateListDown: [
                    '100 EGP For repairing',
                    '100 EGP For repairing',
                    '100 EGP For repairing',
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
