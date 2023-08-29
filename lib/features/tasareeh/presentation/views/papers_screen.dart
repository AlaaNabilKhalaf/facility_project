import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/features/tasareeh/presentation/views/widgets/tasareeh.dart';
import 'package:facility/features/tasareeh/presentation/views/workers_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaperScreen extends StatelessWidget {
  const PaperScreen({super.key ,  required this.paperScreenChaker });
final bool paperScreenChaker ;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBarButtom2(text: 'Permeation',),
        body: Column(
          children: [
            SizedBox(
              child: paperScreenChaker ? Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                height: 90.h,
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('Sorry, workers entry is not allowed '
                    ,textAlign: TextAlign.left, style: TextStyle(
                        fontSize: 17,
                        color: Colors.white
                      ),),
                    Text('You should pay your irregularities to allow workers entry again',
                      textAlign: TextAlign.left,style: TextStyle(
                      color: Colors.white,
                      fontSize: 15
                    ),),
                  ],
                ),
              ) : SizedBox(height: 10.h,) ,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>  WorkersScreen()));
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.all(15),
                width: 340.w,
                height: 50.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        width: 1,
                        color: Colors.grey.shade300
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(paperScreenChaker ? 'assets/icons/Group 177.png' : 'assets/icons/Group 1771.png'),

                    Text('Workers Permeation (50 pound)'
                    ,style: TextStyle(
                       color: paperScreenChaker? Colors.grey : CupertinoColors.black ,
                       fontSize: 17
                      ),),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Tasareeh_View()));
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(15),

                width: 340.w,
                height: 50.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        width: 1,
                        color: Colors.grey.shade300
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset( 'assets/icons/Group 1771.png'),

                    const Text('Visitor Permeation'
                      ,style: TextStyle(
                          color: CupertinoColors.black ,
                          fontSize: 17
                      ),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
