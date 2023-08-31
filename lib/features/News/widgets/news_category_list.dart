import 'package:facility/features/News/views/chosen_category_news.dart';
import 'package:facility/features/News/widgets/news_listview.dart';
import 'package:facility/features/home/views/moreScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utilies/assets.dart';

class NewsCategoryList extends StatelessWidget {

  final services = [
    "Water",
    "Electricity",
    "Maintenance",
   "Agriculture"
  ];

NewsCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: 4,
          itemBuilder: (context , index)=>GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const ChosenCategoryNews()));
              },
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 100.h,width: 100.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 1,
                      color: Colors.grey.shade300
                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AssetData.newsBodyList[index],fit: BoxFit.fill,),
                     const SizedBox(height: 15,),
                      Text(services[index],style: const TextStyle(
                        fontSize: 17
                      ),)

                    ],
                  ),
                ),
              ))),
    );
  }
}
