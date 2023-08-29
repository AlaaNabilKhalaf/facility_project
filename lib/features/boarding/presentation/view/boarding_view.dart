
import 'package:facility/features/boarding/presentation/view/widgets/boarding_body.dart';
import 'package:flutter/material.dart';

class BoardingView extends StatelessWidget {
  const BoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BoardingBody(),
      ),
    );
  }
}
