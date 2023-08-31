import 'package:flutter/material.dart';
import '../views/home_news.dart';
import 'homeServicesList.dart';

class HomeAndServicesBody extends StatelessWidget {
  const HomeAndServicesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GestureDetector(
              onTap: (){Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> const HomeNews()));},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset('assets/homeImages/Mask Group 18.png',fit: BoxFit.fill,height: 220,width: double.infinity,),
              )),
        const SizedBox(height: 20,),
        const  Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,),
            child: Text("Services",
            style: TextStyle(
              fontSize: 20
            ),),
          ),
          HomeServiceList(
            theHeight: 330,),
        ],
      ),
    );
  }
}
