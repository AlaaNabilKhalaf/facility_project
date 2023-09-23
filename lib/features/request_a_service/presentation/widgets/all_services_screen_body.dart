import 'package:facility/features/request_a_service/inside_services/maintenance/presentation/views/maintenance_page.dart';
import 'package:facility/features/request_a_service/inside_services/plumbing/presentation/selectProviderScreen.dart';
import 'package:facility/features/request_a_service/inside_services/plumbing/presentation/views/plumbing_page.dart';
import 'package:facility/features/services_home/presentation/views/widgets/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utilies/assets.dart';
import '../../../home/views/moreScreen.dart';
import '../../../home/widgets/homeServicesList.dart';
import '../../inside_services/home_keeping/presentation/views/home_keeping_page.dart';

class AllServicesScreenBody  extends StatelessWidget {
  const AllServicesScreenBody ({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Search(text:'Search'),
              ),
              HomeServiceList(
                theHeight: 530.h,
                images: AssetData.requestServiceHomeImages,
                services: AssetData.requestServiceHomeTitles,
                nextScreen : const [
                  HomeKeepingPage(),
                  MaintenancePage(),
                  MoreScreen(),
                  MoreScreen(),
                  PlumbingPage(),
                  MoreScreen(),
                  MoreScreen(),
                  MoreScreen(),
                ],),
            ],
          ),
        )
      ],
    );
  }
}
