import 'package:facility/core/utilies/assets.dart';
import 'package:facility/features/home/views/moreScreen.dart';
import 'package:facility/features/request_a_service/inside_services/plumbing/presentation/views/plumbing_page.dart';
import 'package:facility/features/request_a_service/presentation/views/all_servecies_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../home/widgets/home_and_services_body.dart';
import '../../../services_home/presentation/views/widgets/search.dart';

class RequestServiceHomeScreenBody extends StatelessWidget {
  const RequestServiceHomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Search(text: 'Search For a Service',),
              ),
              HomeAndServicesBody(
                theHeight: MediaQuery.of(context).size.height*.35,
                topWidget: Padding(
                  padding: const EdgeInsets.only(top: 16 , right: 20 , left: 20),
                  child: Image.asset('assets/images/request_service_images/Group 128.png',
                    fit: BoxFit.fill,
                  ),
                ),
                widgetInServiceRow: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                        return const AllServicesScreen();
                      }));
                    },
                    child: const Text('see all' ,
                      style: TextStyle(fontSize: 14),)),
                images: AssetData.requestServiceHomeImages,
                services: AssetData.requestServiceHomeTitles,
                homeListViewList: const [
                  MoreScreen(),
                  MoreScreen(),
                  MoreScreen(),
                  MoreScreen(),
                  PlumbingPage(),
                  MoreScreen(),
                  MoreScreen(),
                  MoreScreen(),
                ],)


            ],
          ),
        )
      ],
    );
  }
}
