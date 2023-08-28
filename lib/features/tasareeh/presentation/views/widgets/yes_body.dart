//
// import 'package:facility/constants.dart';
// import 'package:facility/core/shared_widgets/text_field.dart';
// import 'package:facility/core/utilies/styles.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class Yes extends StatefulWidget {
//
//
//   @override
//   State<Yes> createState() => _YesState();
// }
//
// class _YesState extends State<Yes> {
//   bool isClicked=false;
//   bool isClicked2=false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: ListView(
//           children: [
//             const Text('Please enter Customers Data'),
//             SizedBox(height: 10.h,),
//             isClicked==false?
//             Container(
//               padding: EdgeInsets.all(10),
//               height: 70,
//               decoration: BoxDecoration(
//                   color: Colors.transparent,
//                   border: Border.all(color: Colors.black),
//                   borderRadius: BorderRadius.circular(10)
//               ),
//               child:  Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text("Customer 1"),
//                   IconButton(onPressed: (){
//                     setState(() {
//                       isClicked=true;
//                     });
//                   }, icon: Icon(Icons.keyboard_arrow_down))
//                 ],
//               ),
//             ):
//             Container(
//               padding: EdgeInsets.all(10),
//               height:550.h,
//               color: LIGHT_GREY.withOpacity(.1),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text("Customer 1"),
//                       IconButton(onPressed: (){
//                         setState(() {
//                           isClicked=false;
//                         });
//                       }, icon: Icon(Icons.keyboard_arrow_up)
//                       )
//                     ],
//                   ),
//                   SizedBox(height: 20.h,),
//                   const Text("Customer Name"),
//                   SizedBox(height: 5.h,),
//                   defaultText(type: TextInputType.text,borderWidth: .3),
//
//                   SizedBox(height: 10.h,),
//                   const Text("ID Number"),
//                   SizedBox(height: 5.h,),
//                   defaultText(type: TextInputType.text,borderWidth: .3),
//                   SizedBox(height: 10.h,),
//                   defaultText(type: TextInputType.text,borderWidth: 1,suffix: Icons.upload_rounded,hint: "Upload your ID")
//                   ,SizedBox(height: 10.h,),
//                   Text("Reason for visit"),
//                   SizedBox(height: 5.h,),
//                   defaultText(type: TextInputType.text,maxLines: 4,borderWidth: .2),
//                   SizedBox(height: 10.w,),
//                   SizedBox(
//                     height: 100.h,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Expanded(child: Container(height: 55.h,
//                           decoration: BoxDecoration(border: Border.all(color: LIGHT_GREY),borderRadius: BorderRadius.circular(10)),child: Text("Save",style: Styles.textStyle20,),alignment: Alignment.center,)),
//                         SizedBox(width: 5.w,),
//                         Expanded(child: Container(height: 55.h,decoration: BoxDecoration(color: kPrimaryColor,borderRadius: BorderRadius.circular(10)),
//                           child: Text("Cancel",style: Styles.textStyle20.copyWith(color: Colors.white),),alignment: Alignment.center,)),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//
//             ),
//             SizedBox(height:20.h,),
//
//
//             isClicked2==false?
//             Container(
//               padding: EdgeInsets.all(10),
//               height: 70,
//               decoration: BoxDecoration(
//                   color: Colors.transparent,
//                   border: Border.all(color: Colors.black),
//                   borderRadius: BorderRadius.circular(10)
//               ),
//               child:  Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text("Customer 2"),
//                   IconButton(onPressed: (){
//                     setState(() {
//                       isClicked2=true;
//                     });
//                   }, icon: Icon(Icons.keyboard_arrow_down))
//                 ],
//               ),
//             ):
//             Container(
//               padding: EdgeInsets.all(10),
//               height:550.h,
//               color: LIGHT_GREY.withOpacity(.1),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text("Customer 2"),
//                       IconButton(onPressed: (){
//                         setState(() {
//                           isClicked2=false;
//                         });
//                       }, icon: Icon(Icons.keyboard_arrow_up)
//                       )
//                     ],
//                   ),
//                   SizedBox(height: 20.h,),
//                   const Text("Customer Name"),
//                   SizedBox(height: 5.h,),
//                   defaultText(type: TextInputType.text,borderWidth: .3),
//
//                   SizedBox(height: 10.h,),
//                   const Text("ID Number"),
//                   SizedBox(height: 5.h,),
//                   defaultText(type: TextInputType.text,borderWidth: .3),
//                   SizedBox(height: 10.h,),
//                   defaultText(type: TextInputType.text,borderWidth: 1,suffix: Icons.upload_rounded,hint: "Upload your ID")
//                   ,SizedBox(height: 10.h,),
//                   Text("Reason for visit"),
//                   SizedBox(height: 5.h,),
//                   defaultText(type: TextInputType.text,maxLines: 4,borderWidth: .2),
//                   SizedBox(height: 10.w,),
//                   SizedBox(
//                     height: 100.h,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Expanded(child: Container(height: 55.h,
//                           decoration: BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(10)),child: Text("Save",style: Styles.textStyle20,),alignment: Alignment.center,)),
//                         SizedBox(width: 5.w,),
//                         Expanded(child: Container(height: 55.h,decoration: BoxDecoration(color: kPrimaryColor,borderRadius: BorderRadius.circular(10)),
//                           child: Text("Cancel",style: Styles.textStyle20.copyWith(color: Colors.white),),alignment: Alignment.center,)),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//
//             )
//
//
//
//
//
//
//
//
//
//
//           ],
//         ),
//       ),
//     );
//   }
// }