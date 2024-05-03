import 'package:flutter/material.dart';

class datatable extends StatefulWidget {
  

  @override
  State<datatable> createState() => _datatableState();
}

class _datatableState extends State<datatable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DataTable(
        
        dataTextStyle: TextStyle(
          fontSize: 15.0
        ),
        border: TableBorder.all(),
        columns: [
          DataColumn(label: Text("Name")),
          DataColumn(label: Text("Age")),
        ],
        rows: [
          DataRow(
            cells: [
              DataCell(Text("Akash")),
              DataCell(Text("34")),
            ]
          ),
           DataRow(
            cells: [
              DataCell(Text("juhul")),
              DataCell(Text("32")),
            ]
          ),
           DataRow(
            cells: [
              DataCell(Text("Bhaven")),
              DataCell(Text("25")),
            ]
          )
        ],
      ),
    );
  }
}