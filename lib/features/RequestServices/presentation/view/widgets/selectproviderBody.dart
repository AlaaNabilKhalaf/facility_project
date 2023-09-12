import 'package:facility/features/RequestServices/presentation/view/widgets/selectproviderList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';
import '../../../../../core/shared_widgets/custom_buttom.dart';
import '../../../../../core/shared_widgets/text_field.dart';
import '../../../../../core/utilies/styles.dart';
import '../TimeSlotsScreen.dart';

class SelectBroviderBody extends StatelessWidget {
  const SelectBroviderBody({
    super.key,
    required this.customHeight,
    required this.images,
    required this.customWidth,
  });

  final double customHeight;
  final List<String> images;
  final double customWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          defaultText(type: TextInputType.text,borderWidth: .5,hint: 'Search',suffix: Icons.search,),
          SizedBox(height: 20.h,),
          Text('Recommended',style:Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
          SizedBox(height: 10.h,),
          SelectProviderList(customHeight: customHeight, images: images),
          SizedBox(height: 15.h,),
          Row(
            children: [
              Expanded(child: CustomButton(backgroundColor: Colors.white, text: 'Skip', func: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return TimeSlotsScreen();
                }));
              },width: customWidth*.4,textColor:Colors.black ,)),
              Expanded(child: CustomButton(backgroundColor: kPrimaryColor, text: 'Next', func: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return TimeSlotsScreen();
                }));
              },width: customWidth*.4,),),
            ],
          )

        ],
      ),
    );
  }
}
