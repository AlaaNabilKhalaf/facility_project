import 'package:facility/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/shared_widgets/custom_buttom.dart';


class MyReviewsBody extends StatelessWidget {
 const MyReviewsBody({super.key,  this.containerText , this.containerColor2 ,
   this.name, required this.fun });
  final Color containerColor = kPrimaryColor ;
 final VoidCallback fun ;
 final List <String>? containerText ;
 final List<Color>? containerColor2 ;
 final List<String>? name ;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context , index )=>
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                padding: const EdgeInsets.symmetric(vertical:5),
                height: 110.h,width: double.infinity,
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
                     fontSize: 15,
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
                                 fontSize: 15
                               ),
                             ),
                           ),
                          SizedBox(width: MediaQuery.of(context).size.width*0.2,),
                           SizedBox(width: 100.w,height: 20.h,child: Image.asset('assets/images/Group 728.png',fit: BoxFit.fill,),)
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
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: CustomButton(backgroundColor: const Color(0xFFB39952), text: 'Submit Review',
              func: fun , width: 340.w),
        )
      ],
    );


  }
}
