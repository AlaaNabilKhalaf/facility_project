import 'package:facility/features/complaint/presentation/view/widgets/ComplaintDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Complaint_Body extends StatelessWidget {
  Complaint_Body({
    super.key,
  });

  List complaintType=[
    'Management Complaints',
    'Maintenance Complaints',
    'Road Complaints',
    'Security Complaints',
    'Nuisance complaints',
    'Electricity Complaints',
    'Hygiene complaints'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: complaintType.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ComplaintDetails(title: complaintType[index])));
              },
              child: Container(
                padding: const EdgeInsets.all(15),

                width: 340.w,
                height: 60.h,
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

                    Text("${complaintType[index]}",style: const TextStyle(
                        color: CupertinoColors.black ,
                        fontSize: 17
                    ),),
                  ],
                ),
              ),
            ),
          );
        });
  }
}