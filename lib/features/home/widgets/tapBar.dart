

import 'package:facility/core/utilies/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants.dart';

class Home_Custom_TabBar extends StatefulWidget {
  const Home_Custom_TabBar({super.key});

  @override
  State<Home_Custom_TabBar> createState() => _Home_Custom_TabBarState();
}

class _Home_Custom_TabBarState extends State<Home_Custom_TabBar> {
  List<String> items=[
    "Details",
    "Offers",
    "Gallery"
  ];
  static const offersImages = [
    "assets/homeImages/Group 810.png",
    "assets/homeImages/Group 811.png",
    "assets/homeImages/Group 812.png",
  ];
  List<Widget> widgets=  [

    const  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Text('Description',
          style: TextStyle(
              fontSize: 18,
              color: CupertinoColors.black
          ),),),

      Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry."
          " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",style:
      TextStyle(
          fontSize: 14,color: Colors.grey
      ),
        overflow:TextOverflow.ellipsis ,
        maxLines: 2,
      ),



      Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Text('Address',style: TextStyle(
            fontSize: 18,
            color: CupertinoColors.black
        ),),
      ),
      Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. "
          "The point of using Lorem Ipsum is that it has", overflow:TextOverflow.ellipsis ,
        maxLines: 2,style: TextStyle(
            fontSize: 14,color: Colors.grey
        ),),

      SizedBox(height: 23,),

      Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Text('Working Days', style: TextStyle(
            fontSize: 18,
            color: CupertinoColors.black
        ),),
      ),
      Text('All Week Days',overflow:TextOverflow.ellipsis ,
        maxLines: 2, style: TextStyle(
            fontSize: 14,color: Colors.grey
        ),),
      SizedBox(height: 23,),

      Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Text('Working Hours', style: TextStyle(
            fontSize: 18,
            color: CupertinoColors.black
        ),),
      ),
      Text('9:00 am - 5:00 pm', overflow:TextOverflow.ellipsis ,
        maxLines: 2,style: TextStyle(
            fontSize: 14,color: Colors.grey
        ),),
      SizedBox(height: 23,),

      Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Text('Numbers',
            style: TextStyle(
                fontSize: 18,
                color: CupertinoColors.black
            )
        ),
      ),
      Text(""" 01146475874
 01017757666
 02054778547                
                 """, style: TextStyle(
          fontSize: 14,color: Colors.grey
      ),),

    ],
  ),

    ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 90.h,
          width: 250.w,
          child: Image.asset(offersImages[index],fit: BoxFit.contain,
            ),
        ),
      );
    }),



    GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
    //  scrollDirection: Axis.vertical,
 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
 crossAxisCount: 2,),
 itemCount: 4,
 itemBuilder: (context , index)=>
 SizedBox(
   height: 100.h,width: 200.w,
   child: Padding(
     padding: const EdgeInsets.all(10.0),
     child: Image.asset(AssetData.galleryImages[index],fit: BoxFit.fill,
),
   ),
 )

 ),

  ];

  int current=0;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
       SizedBox(height:10.h ),
        Container(
          color: LIGHT_GREY.withOpacity(0.2),
          height: 50.h,
          child: ListView.builder(
              physics:const BouncingScrollPhysics(),
              itemCount: items.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){

                return GestureDetector(
                  onTap: (){
                    current=index;
                    setState(() {
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: current==index?kPrimaryColor:Colors.transparent,
                        borderRadius: BorderRadius.circular(7)
                    ),

                    width:111.w ,
                    height:35.h,
                    child: Center(child: Text(items[index],style: TextStyle(color:current==index?Colors.white:Colors.black),),),
                  ),
                );
              }),
        ),
     SizedBox(height: 7.h,),

        SizedBox(
          height: 490.h,
          child: widgets[current],

        )

      ],
    );
  }
}