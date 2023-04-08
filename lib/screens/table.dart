import 'package:flutter/material.dart';

class TableData extends StatelessWidget {
  const TableData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
        columns: [
          DataColumn(label: Text("Course")),
          DataColumn(label: Text("Data")),
          DataColumn(label: Text("Time")),
        ],
        rows: [
          DataRow(cells: [
            DataCell(Text("Physycs")),
            DataCell(Text("Tommorow")),
            DataCell(Text("14:00")),
          ]),
          DataRow(cells: [
            DataCell(Text("Programming")),
            DataCell(Text("15.04.23")),
            DataCell(Text("16:00")),
          ]),
        ],
      );
  }
}
