import 'package:facility/features/News/widgets/news_category_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsCategoryBody extends StatelessWidget {
  const NewsCategoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      const Padding(
         padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
         child: Text("Please select the category you want to see it's news",
          style: TextStyle(
            fontSize: 17
          ),),
       ),
        SizedBox(
            height: 550.h,
            child:  NewsCategoryList())




      ],
    );
  }
}
