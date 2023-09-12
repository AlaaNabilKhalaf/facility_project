import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utilies/styles.dart';

class RequestDetailsContainer extends StatelessWidget {
  const RequestDetailsContainer({
    super.key,
    required this.customHeight,
    required this.requestDetails,
  });

  final double customHeight;
  final List<Map<String, dynamic>> requestDetails;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: customHeight*.27,
      child: ListView.separated(itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(requestDetails[index]['service'],style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),),
              Text(requestDetails[index]['price'],style: Styles.textStyle12,),
            ],
          ),
        );
      }, separatorBuilder: (context,index){
        return SizedBox(height: 5.h,);
      }, itemCount: requestDetails.length),
    );
  }
}
