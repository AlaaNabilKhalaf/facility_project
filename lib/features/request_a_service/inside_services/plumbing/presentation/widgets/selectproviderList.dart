import 'package:facility/features/request_a_service/inside_services/plumbing/presentation/selectProviderScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../constants.dart';


class SelectProviderList extends StatefulWidget {
   SelectProviderList({
    super.key,
    this.customHeight ,
    required this.images,
    this.columnChildren,
   this.sideWidget,
   this.titles,
  });

 double? customHeight ;
  final List<String> images;
  final List<Widget>? columnChildren;
  final Widget? sideWidget ;
  final List<String>? titles;

  @override
  State<SelectProviderList> createState() => _SelectProviderListState();
}

class _SelectProviderListState extends State<SelectProviderList> {
final List<bool> checkers =
[
  false,
  false,
  false,
  false,
  false,
];

 int servicesCounter = 0 ;
  @override
  Widget build(BuildContext context) {
    widget.customHeight = MediaQuery.of(context).size.height;
    if(widget.customHeight != MediaQuery.of(context).size.height ){ widget.customHeight = widget.customHeight!*.6 ;}
    return SizedBox(
      // height:  widget.customHeight,
      child: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context,index)
          {
        return Container(
          padding: const EdgeInsets.all(10),
          height: widget.customHeight!*.13,
          decoration: BoxDecoration(color: LIGHT_GREY.withOpacity(.2),borderRadius: BorderRadius.circular(10)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(widget.images[index],height: 70.h,fit: BoxFit.fill,),
              SizedBox(width: 7.w,),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: widget.columnChildren != null? widget.columnChildren! : [
                  SizedBox(
                    width: 100.w,
                    child: Text(widget.titles![index],
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400
                    ),),
                  ),
                  const SizedBox(height:10,),
                  const Text('100 EGP For repairing',
                  style: TextStyle(
                    fontSize: 14
                  ),)

                ]
              ),
             SizedBox(
               child:  widget.sideWidget ?? GestureDetector(
                 onTap: (){
setState(() {
  ScaffoldMessenger.of(context).removeCurrentSnackBar();
  checkers[index] =! checkers[index];
  checkers[index] ? servicesCounter++ : servicesCounter-- ;
  checkers[index] ?  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(
        seconds: 30
      ),
        backgroundColor: Colors.white,
        content:  Container(
        height: 50.h,width: 200,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('$servicesCounter  Services Selected',
              style:  TextStyle(
                fontSize: 15.sp
              ),),
            GestureDetector(
              onTap: (){
                ScaffoldMessenger.of(context).removeCurrentSnackBar();
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SelectProviderScreen()));
              },
              child:  Row(
                  children: [
                    const Icon(Icons.settings, color: Colors.white, size: 25,),
                    SizedBox(width: 9.w,),
                    Text("Repair",
                      style: TextStyle(
                          fontSize:15.sp
                      ),)
                  ],
                ),
            )
            ],
          ),
        )))
) : null ;
});

                 },
                 child: Container(
                   height: 24.h,width: 24.h,
                   decoration: const BoxDecoration(
                     shape: BoxShape.circle,
                     color: kPrimaryColor
                   ),
                   child: Icon(checkers[index]? Icons.check : Icons.add ,color: Colors.white,),
                 ),
               ),
             )

            ],
          ),
        );
      }, separatorBuilder: (context,index){
        return SizedBox(height: 10.h,);
      }, itemCount: 5),
    );
  }
}