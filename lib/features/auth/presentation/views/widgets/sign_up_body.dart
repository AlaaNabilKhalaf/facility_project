

import 'package:facility/features/home/views/homePage.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/shared_widgets/custom_buttom.dart';
import '../../../../../core/shared_widgets/text_field.dart';
import '../../../../../core/utilies/styles.dart';


class SignBody extends StatefulWidget {
  const SignBody({super.key});

  @override
  State<SignBody> createState() => _SignBodyState();
}
var emailController = TextEditingController();
var passwordController = TextEditingController();
bool isPasswordVisible = false;
class _SignBodyState extends State<SignBody> {
  @override
  Widget build(BuildContext context) {
   return Padding(
     padding:  const EdgeInsets.all(20.0), //this number is standard at all at will make padding to make it in center
     child: Center(
       child: SingleChildScrollView(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             const Text(
               'Let\'s sign you in.',
               style: Styles.textStyle27,
             ),
             const SizedBox(height: 20,),
             const SizedBox(height: 5,),
             const Text(
               'Welcome Back.' ,
               style: Styles.textStyle22,
             ),
             const Text(
               'You have been missed!' ,
               style: Styles.textStyle22,
             ),
             const SizedBox(
               height: 40.0,
             ),
             defaultText(
                 type: TextInputType.emailAddress,
                 hint: 'Email, number or username ',
                 controller: emailController,
               borderWidth: .3
             ),
             const SizedBox(
               height: 15.0,
             ),
             defaultText(
               borderWidth: .3,
               lines: 1,
                 type: TextInputType.visiblePassword,
                 hint: 'Password',
               controller: passwordController,
               isObscure: !isPasswordVisible,
               suffix: isPasswordVisible ? Icons.visibility : Icons.visibility_off,
               pressed: (){
                 setState(() {
                   isPasswordVisible = !isPasswordVisible;
                 });
               }
             ),
             const SizedBox(
               height: 40.0,
             ),
             CustomButton(
               width: MediaQuery.of(context).size.width*.7,
               backgroundColor: kPrimaryColor,
               text: 'Sign in',
               func: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
               },
             ),
             const SizedBox(
               height: 10.0,
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children:  [
                  Text(
                   'Don\'t have an account?',
                   style: Styles.textStyle22.copyWith(fontSize: 13,)
                 ),
                 TextButton(
                   onPressed: (){
                     GoRouter.of(context).push(
                         '/registerView'
                     );
                   },
                   child:  Text(
                     'Register ',
                     style: Styles.textStyle15.copyWith(fontSize: 13 , color: kPrimaryColor),
                   ),
                 ),
               ],
             ),
           ],
         ),
       ),
     ),
   );
  }
}
