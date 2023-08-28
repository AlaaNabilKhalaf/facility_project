
import 'package:facility/features/services_home/presentation/views/widgets/search.dart';
import 'package:facility/features/services_home/presentation/views/widgets/service_list.dart';
import 'package:flutter/material.dart';

import '../../../../../core/shared_widgets/sponsers_list.dart';
import '../../../../../core/utilies/styles.dart';
import 'image_stack.dart';
import 'list_myflat.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
       child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const Search(
                text: 'Search for service, offer',
              ),
              const SizedBox(
                height: 10,
              ),
              const ImageStack(),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'My Flats',
                  style: Styles.textStyle15.copyWith(fontSize: 16, color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListFlat(),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Our Services',
                  style: Styles.textStyle15.copyWith(fontSize: 16 , color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ServiceList(),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Our Sponsors',
                  style: Styles.textStyle15.copyWith(fontSize: 16 , color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: AspectRatio(
                  aspectRatio: 2.3/1,
                  child: SponsersList(
                  ),
                ),
              ),
              // SponsersList(),
            ],
          ),
        ),
        ),
      ],
    );
  }
}
