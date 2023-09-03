
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../widgets/appBarForHomePage.dart';
import '../widgets/discoverScreenUI.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: lIGHT_BACKGROUND ,

      appBar: AppBarForHomePage(text: 'Discover',
         titleBool: true,),
      body: const DiscoverScreenUI(),
    );
  }
}
// child: ListView.builder(
//   itemCount: stacks.length ,
//   scrollDirection: Axis.horizontal,
//   itemBuilder: (context , index )=>
//       GestureDetector(
//           onTap: (){Navigator.push(context, MaterialPageRoute(
//               builder: (context)=> const HomeNews()));},
//           child: Stack(
//             clipBehavior: Clip.antiAlias,
//             children: [
//               Positioned(child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child:
//                 Image.asset(images[index],fit: BoxFit.fill,width: 330.w,height: 180.h,),
//               )),
//
//               Positioned(
//                   left: 30,top: 20,
//                   child: Text(texts[index],
//                   style: const TextStyle(
//                     fontSize: 15,
//                     color: Colors.white
//                   ),
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,),)
//             ],
//           ),
//
//       ),
// ),