import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final aspectRatio = constraints.maxWidth / constraints.maxHeight;

          final id = 1;

          if (aspectRatio > 1.3) {
            return DataTable(columns: const <DataColumn>[
              DataColumn(label: Expanded(child: Text("S.no"))),
              DataColumn(label: Expanded(child: Text("Name"))),
              DataColumn(label: Expanded(child: Text("Department"))),
              DataColumn(label: Expanded(child: Text("Salary"))),
              DataColumn(label: Expanded(child: Text("Phone"))),
              DataColumn(label: Expanded(child: Text("Address")))
            ], rows: <DataRow>[
              DataRow(
                cells: <DataCell>[
                  DataCell(Text("96376218671683")),
                  DataCell(Text("Praveen")),
                  DataCell(Text("IT")),
                  DataCell(Text("10")),
                  DataCell(Text("10")),
                  DataCell(ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/product-details/$id");
                      },
                      child: Text("Details")))
                ],
              ),
              DataRow(cells: <DataCell>[
                DataCell(Text("96376218671683")),
                DataCell(Text("Praveen 2")),
                DataCell(Text("IT")),
                DataCell(Text("10")),
                DataCell(Text("10")),
                DataCell(ElevatedButton(
                    onPressed: ()  {
                       Navigator.pushNamed(context, "/product-details/2");
                    },
                    child: Text("Details")))
              ])
            ]);
          } else {
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text("96376218671683"),
                    Text(
                      "Praveen",
                    ),
                    Text("IT"),
                    Text("10"),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/product-details",
                              arguments: {"id": "1"});
                        },
                        child: Text("Details")),
                  ],
                );
              },
            );
          }
        },
      ),
    );
  }
}
