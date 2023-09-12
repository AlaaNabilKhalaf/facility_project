import 'package:facility/features/request_a_service/inside_services/plumbing/presentation/widgets/selectproviderList.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../constants.dart';
import '../../../../../../core/shared_widgets/custom_buttom.dart';
import '../../../../../../core/utilies/styles.dart';
import '../../../../../services_home/presentation/views/widgets/search.dart';
import '../views/TimeSlotsScreen.dart';

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
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const  Search(text: 'Search'),
                  // defaultText(type: TextInputType.text,borderWidth: .5,hint: 'Search',suffix: Icons.search,),
                  SizedBox(height: 20.h,),
                  Text('Recommended',style:Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
                  SizedBox(height: 10.h,),
                  SelectProviderList(customHeight: customHeight, images: images ,
                  columnChildren:
                    [
                      Text('Ahmed Khaled',style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w500),),
                     const Text('Category :plumbing '),
                     const Row(children: [
                        Icon(Icons.star,color: Colors.yellow,),
                        Text('4.3')
                      ],)
                    ],
                  sideWidget: const Text('30 EGP/h',style: Styles.textStyle20,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
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
                    ),
                  )

                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
