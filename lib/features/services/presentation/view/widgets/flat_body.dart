
import 'package:facility/features/services/presentation/view/widgets/services_body.dart';
import 'package:flutter/material.dart';

import '../../../../../core/shared_widgets/sponsers_list.dart';
import '../../../../../core/utilies/styles.dart';
class FlatBody extends StatelessWidget {
  const FlatBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Our Services",
            style: Styles.textStyle16,
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * .4,
              child: const ServicesBody()),
          const Text(
            "Our Sponsers",
            style: Styles.textStyle16,
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height / 9,
              child: const SponsersList(),
          ),
        ],
      ),
    );
  }
}
