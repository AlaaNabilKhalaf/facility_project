import 'package:facility/features/services_home/presentation/views/widgets/profileDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileContainer extends StatelessWidget {
  ProfileContainer({
    super.key,
    required this.icons,
    required this.profileCategories,
    required this.index
  });

  final List<Icon> icons;
  final List<String> profileCategories;
  int index=0;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfileDetails()));
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            SizedBox(child: icons[index],),
            SizedBox(width: 10.w,),
            Text(profileCategories[index]),
            const Spacer(),
            Icon(Icons.arrow_forward_ios_rounded,size: 15,)
          ],
        ),
      ),
    );
  }
}