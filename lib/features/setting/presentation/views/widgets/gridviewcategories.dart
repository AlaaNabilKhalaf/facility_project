import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../animation/fadeanimation.dart';
import 'Entrance_Activation.dart';
import 'griditem.dart';

class Grid_View_Categories extends StatelessWidget {

  List screens=[
    Enterance_Activation(),
    Enterance_Activation(),
    Enterance_Activation(),
    Enterance_Activation(),
    Enterance_Activation(),
    Enterance_Activation(),
    Enterance_Activation(),
  ];
  @override
  Widget build(BuildContext context) {
return
    Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 8),
     child: GridView.builder(
         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 2,
         ),
         itemCount: 7,
         itemBuilder: (context , index)=>Padding(
             padding: const EdgeInsets.all(8.0),
             child: GestureDetector(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>screens[index]));
                 },
                 child: GridItemSetting(index: index,))
         )),
    );
  }
}