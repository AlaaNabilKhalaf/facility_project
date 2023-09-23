import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:facility/features/request_a_service/inside_services/maintenance/presentation/widgets/maintenance_body.dart';
import 'package:flutter/material.dart';

class MaintenancePage extends StatelessWidget {
  const MaintenancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarButton2(text: 'Maintenance',),
        body: const MaintenanceBody(),
      ),
    );
  }
}
