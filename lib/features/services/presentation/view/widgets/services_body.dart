import 'package:flutter/material.dart';

import 'grid_item.dart';
class ServicesBody extends StatelessWidget {
  const ServicesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
       ),
          itemCount: 6,
          itemBuilder: (context , index)=>
              Padding(
        padding: const EdgeInsets.only(right: 8.0,bottom: 8),
        child: GridItem(index: index,),
      )

      ),
    );
  }
}
