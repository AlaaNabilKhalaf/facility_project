import 'package:facility/constants.dart';
import 'package:facility/core/shared_widgets/appbar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Phone_Directory extends StatelessWidget {
  const Phone_Directory({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarButton2(text: "Phone Directory",),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            DataTable(
              dataRowHeight: 60.h,
              columns: const <DataColumn>[

                DataColumn(
                  label: Expanded(
                    child: Text(
                      'Contact',
                      style: TextStyle(color: kPrimaryColor),
                    ),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Text(
                      'Numbers',
                      style: TextStyle(color: kPrimaryColor),
                    ),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Text(
                      'Working hours',
                      style: TextStyle(color: kPrimaryColor),
                    ),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Text(
                      'Zone Coverage',
                      style: TextStyle(color: kPrimaryColor),
                    ),
                  ),
                ),
              ],
              rows: const <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Fire')),
                    DataCell(Icon(Icons.phone)),
                    DataCell(Text('Always')),
                    DataCell(Text('All week')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Police')),
                    DataCell(Icon(Icons.phone)),
                    DataCell(Text('Always')),
                    DataCell(Text('All week')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Ambulance')),
                    DataCell(Icon(Icons.phone)),
                    DataCell(Text('Always')),
                    DataCell(Text('All week')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Resort Emergency')),
                    DataCell(Icon(Icons.phone)),
                    DataCell(Text('Always')),
                    DataCell(Text('All week')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Security Manager')),
                    DataCell(Icon(Icons.phone)),
                    DataCell(Text('10 Am to 6 Pm')),
                    DataCell(Text('All week')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Wizu\n(Maintenance and\n operations)')),
                    DataCell(Icon(Icons.phone)),
                    DataCell(Text('Associate Professor')),
                    DataCell(Text('All week')),
                  ],
                ),
              ],
            ),
          ]
        ),
      ),
    );
  }
}
