import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MyReviewsBody extends StatelessWidget {
 const MyReviewsBody({super.key,
    required this.containerColor ,  this.containerText , this.containerColor2 ,
   this.name
  });
  final Color containerColor ;
 final List<String>? containerText ;
 final List<Color>? containerColor2 ;
 final List<String>? name ;
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(itemBuilder: (context , index )=>
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),

          padding: const EdgeInsets.all(10),
          height: 100.h,width: double.infinity,
decoration: BoxDecoration(
  border: BorderDirectional(
    bottom: BorderSide(width: 1,color: Colors.grey.shade300)
  )
),
     child: Row(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Container(
             alignment: Alignment.center,
             height: 38.h,width: 42.w,
             decoration: BoxDecoration(
               color: containerColor2 == null? containerColor : containerColor2![index] ,
               borderRadius: BorderRadius.circular(10)
             ),
             child: containerText == null? const Text('LH',
             style: TextStyle(
               fontSize: 17,
               color: Colors.white
             ),) : Text(containerText![index],
     style: const TextStyle(
           fontSize: 19,
           color: Colors.white
     ),),
    ),

           Padding(
  padding: const EdgeInsets.symmetric(horizontal: 10),
  child:   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(bottom: 7),
                       child: Text(
                         name == null? 'Loaa Hany' : name![index],
                         style: const TextStyle(
                           fontSize: 17
                         ),
                       ),
                     ),
                     SizedBox(width: 80.w,),
                     SizedBox(width: 95,height: 25,child: Image.asset('assets/images/Group 728.png',fit: BoxFit.fill,),)
                   ],
                 ),
                 const Padding(
                   padding: EdgeInsets.only(bottom: 13),
                   child: Text('12 Sep 2023',
                   style: TextStyle(
                     color: Colors.grey,
                     fontSize: 13
                   ),),
                 ),
                 SizedBox(
                   width: 250.w,
                   child: const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                       " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                       " when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                     style: TextStyle(
                         fontSize: 13
                     ),
                   maxLines: 3,
                     overflow: TextOverflow.ellipsis,
                   ),
                 ),
               ],
             ),
),


         ],
     ),
        ));
  }
}
