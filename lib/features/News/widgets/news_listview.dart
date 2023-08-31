import 'package:facility/features/News/views/the_final_news.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants.dart';

class NewsListview extends StatelessWidget {
 NewsListview({super.key});
final List<String> newsAddress = [
  "WATER INTERRUPTED",
  "COMPOUND INTEREST ",
  "RETIREMENT SAVINGS",
  "WATER INTERRUPTED",
  "COMPOUND INTEREST ",
  "RETIREMENT SAVINGS",
  "WATER INTERRUPTED",
  "COMPOUND INTEREST ",
  "RETIREMENT SAVINGS",
  "WATER INTERRUPTED",
  "COMPOUND INTEREST ",
  "RETIREMENT SAVINGS",
] ;
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        itemCount: 12,
        itemBuilder: (context , index )=>
        GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> TheFinalNews(title: newsAddress[index])));
            },
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
            padding: const EdgeInsets.all(20),
            height: 110.h,width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: Image.asset('assets/images/Mask Group 6.png',height: 40.h,width: 80.w,fit: BoxFit.fill,),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.h,vertical: 2.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(newsAddress[index],
                        style: const TextStyle(
                          fontSize: 17
                        ),),
                        const SizedBox(height: 12,),
                        const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                            " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,),
                        const SizedBox(height: 12,),
                        const Text('September 2,2022',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 12
                        ),),
],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
