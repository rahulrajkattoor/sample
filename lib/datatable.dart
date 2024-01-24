import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: datatable(),));
}
class datatable extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(decoration: BoxDecoration(color: Colors.green,
        borderRadius: BorderRadius.circular(10),
        border: Border.all()),
          child: DataTable(border: TableBorder.all(
            color: Colors.black,borderRadius: BorderRadius.circular(10),
            width: 2
          ),
              columns: [
            DataColumn(label: Text("name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)),
            DataColumn(label: Text("Age",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)),
            DataColumn(label: Text("Salary",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)),
            DataColumn(label: Text("Qualification",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),))
          ], rows: [
            DataRow(cells: [
              DataCell(Text("anu")),
              DataCell(Text("25")),
              DataCell(Text("25000")),
              DataCell(Text("B tech"))
              ]),
          
              DataRow(cells: [
                DataCell(Text("aju")),
                DataCell(Text("22")),
                DataCell(Text("40000")),
                DataCell(Text("M tech"))
          
              ]),
              DataRow(cells: [
          
                DataCell(Text("ram")),
                DataCell(Text("25")),
                DataCell(Text("50000")),
                DataCell(Text("Diploma"))
          
              ]),

          
          
          
          
          
          
          
          ]),
        ),
      ),
    );
  }

}