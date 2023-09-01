import 'package:flutter/material.dart';

import '../../../../../core/utilies/styles.dart';

class AppBarButtom3 extends StatefulWidget  implements PreferredSizeWidget {

  final String text;
  Widget? columnText;
  AppBarButtom3({super.key, required this.text,this.columnText});

  @override
  State<AppBarButtom3> createState() => _AppBarButtom3State();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppBarButtom3State extends State<AppBarButtom3> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const SizedBox(),
      elevation: 0,
      backgroundColor: Colors.transparent,
      title:Center(
        child: Text(
          widget.text,
          style: Styles.textStyle15.copyWith(fontSize: 16 , color: Colors.black  ),
        ),
      ) ,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width/10,
            height: MediaQuery.of(context).size.height/25,
            decoration:  BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.elliptical(3, 3)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Set the shadow color
                  spreadRadius: 2, // Set the spread radius of the shadow
                  blurRadius: 6, // Set the blur radius of the shadow
                  offset: const Offset(0, 3), // Set the offset of the shadow
                ),
              ],
            ),
            child:  GestureDetector(
              child: Image.asset(
                'assets/icons/vuesax-bold-candle-2.png',
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ),
      ],
      // flexibleSpace: Padding(
      //   padding: const EdgeInsets.all(10.0),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Align(
      //         alignment: Alignment.center,
      //         child: Text(
      //           widget.text,
      //           style: Styles.textStyle15.copyWith(fontSize: 16 , color: Colors.black  ),
      //         ),
      //       ),
      //       Expanded(
      //         child: Align(
      //           alignment: Alignment.centerRight,
      //           child: Container(
      //             width: 45,
      //             height: 90,
      //             decoration:  BoxDecoration(
      //               color: Colors.white,
      //               borderRadius: const BorderRadius.all(Radius.elliptical(3, 3)),
      //               boxShadow: [
      //                 BoxShadow(
      //                   color: Colors.grey.withOpacity(0.5), // Set the shadow color
      //                   spreadRadius: 2, // Set the spread radius of the shadow
      //                   blurRadius: 6, // Set the blur radius of the shadow
      //                   offset: const Offset(0, 3), // Set the offset of the shadow
      //                 ),
      //               ],
      //             ),
      //             child:  GestureDetector(
      //               child: Image.asset(
      //                 'assets/icons/vuesax-bold-candle-2.png',
      //                 fit: BoxFit.scaleDown,
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}