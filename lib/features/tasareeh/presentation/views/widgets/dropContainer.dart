import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';

class DropContainer extends StatefulWidget {
  DropContainer({required this.dropDown});
  String? dropDown;
  @override
  State<DropContainer> createState() => _DropContanerState();
}

class _DropContanerState extends State<DropContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(10),
      child: Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          height: 60.h,
          width: 120.w,
          decoration: BoxDecoration(
              color: Colors.transparent,borderRadius: BorderRadius.circular(10),
              border:
              Border.all(color: LIGHT_GREY)
          ),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("${widget.dropDown}"),
              DropdownButton(
                  underline: SizedBox(height: 10.h,),
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items:  const[
                    DropdownMenuItem(value: 'Carpentry', child: Text("Carpentry"),),
                    DropdownMenuItem(value: 'Plumbing',child: Text("Plumbing"),),
                    DropdownMenuItem(value: 'Cultivation',child: Text("Cultivation"),),
                  ],

                  onChanged: (String?newVal){
                    setState(() {
                      widget.dropDown=newVal!;
                    });
                  }),
            ],
          )
      ),
    );
  }
}