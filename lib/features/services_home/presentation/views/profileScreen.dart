import 'package:facility/features/services_home/presentation/views/widgets/profileBody.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
List<String> profileCategories=[
  'Profile',
  'My Cards',
  'Language Selection',
  'My bills',
  'My Orders',
  'Log Out',

];
List<Icon> icons=[
  const Icon(Icons.person),
  const Icon(Icons.card_membership),
  const Icon(Icons.language),
  const Icon(Icons.padding),
  const Icon(Icons.food_bank_sharp),
  const Icon(Icons.logout_sharp),

];

  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final customHeight=MediaQuery.of(context).size.height;
    return Scaffold(
         body: ProfileScreenBody(customHeight: customHeight, icons: icons, profileCategories: profileCategories),
    );
  }
}




