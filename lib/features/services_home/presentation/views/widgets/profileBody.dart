import 'package:facility/features/services_home/presentation/views/widgets/profileBodyContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';
import '../../../../../core/shared_widgets/text_field.dart';
import '../profileScreen.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({
    super.key,
    required this.customHeight,
    required this.icons,
    required this.profileCategories,
  });

  final double customHeight;
  final List<Icon> icons;
  final List<String> profileCategories;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Row(
            children: [
              CircleAvatar(backgroundImage: const AssetImage('assets/images/profile.jpg'),radius: 20.r,),
              SizedBox(width: 5.w,),
              const Text('Welcome \n Sara Yasser')
            ],
          ),
          SizedBox(height: 10.h,),
          defaultText(type: TextInputType.text,borderWidth: .2,FillColor: LIGHT_GREY,hint: 'Search',suffix: Icons.search),
          SizedBox(
            height:customHeight*.6,
            child: ListView.separated(itemBuilder: (context,index){
              return ProfileContainer(icons: icons, profileCategories: profileCategories, index: index,);
            }, separatorBuilder: (context,index){
              return SizedBox(height: 10.h,);
            }, itemCount: 6),
          )
        ],
      ),
    );
  }
}