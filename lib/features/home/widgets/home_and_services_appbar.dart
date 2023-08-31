// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class HomeAndServicesAppbar extends StatelessWidget {
//   const HomeAndServicesAppbar({super.key});
//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// a
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }
//
//   Widget build(BuildContext context) {
//     return AppBar(
//       leading: const SizedBox(),
//       elevation: 0,
//       backgroundColor: Colors.transparent,
//       flexibleSpace: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Row(
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 12),
//               child: Image.asset("assets/homeImages/svgexport-7 (68) 1.png"),
//             ),
//             const  Text("Khadamaty",
//               style: TextStyle(
//                   fontSize: 17
//               ),),
//             Expanded(
//               child: Align(
//                 alignment: Alignment.centerRight,
//                 child: Container(
//                   width: 45,
//                   height: 90,
//                   decoration:  BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: const BorderRadius.all(Radius.elliptical(3, 3)),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.withOpacity(0.2), // Set the shadow color
//                         spreadRadius: 2, // Set the spread radius of the shadow
//                         blurRadius: 6, // Set the blur radius of the shadow
//                         offset: const Offset(0, 3), // Set the offset of the shadow
//                       ),
//                     ],
//                   ),
//                   child: Image.asset(
//                     'assets/images/noticon.png',
//                     fit: BoxFit.scaleDown,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
