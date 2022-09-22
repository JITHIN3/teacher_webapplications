import 'package:flutter/material.dart';
import 'package:teacher_webapplication/Screens/Deviceinfo.dart';

class SearchStudent extends StatefulWidget {
  const SearchStudent({Key? key}) : super(key: key);

  @override
  State<SearchStudent> createState() => _SearchStudentState();
}

class _SearchStudentState extends State<SearchStudent> {
  final items = ["V", "VI", "VII", "VIII", "IX", "X"];
  final division = ["A", "B", "C", "D"];
  String divisionvalue = "A";
  String dropdownValue = "V";
  String? value;
  String? value2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
          child: Column(
        children: [
          Container(
            width: Helper.getScreenWidth(context),
            color: Colors.white,
            height: 50,
            child: Center(
              child: Container(
                width: 300,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(suffixIcon: Icon(Icons.search,color: Colors.blue,),
                          focusedBorder: InputBorder.none,
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: Helper.getScreenWidth(context),
            color: Colors.white,
            child: Divider(),
          ),
          Container(
              width: Helper.getScreenWidth(context),
              height: 50,
              color: Colors.white,
              child: Expanded(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 8),
                      child: Text("Student Search"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: SizedBox(height: 20, child: VerticalDivider()),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right:120),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(5)),
                              child: DropdownButtonHideUnderline(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: DropdownButton<String>(
                                    hint: Text("Class"),
                                    style: TextStyle(fontSize: 13),
                                    value: value,
                                    items: items.map(buildMenuItem).toList(),
                                    onChanged: (value) => setState(
                                      () => this.value = value,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(5)),
                              child: DropdownButtonHideUnderline(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: DropdownButton<String>(
                                    hint: Text("Division"),
                                    style: TextStyle(fontSize: 13),
                                    value: value2,
                                    items: division.map(buildMenuItem2).toList(),
                                    onChanged: (value2) => setState(
                                      () => this.value2 = value2,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 20,),
                            Container(
                              height: 40,
                              width: 100,
                              child: ElevatedButton(
                                child: Text('Search'),
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    textStyle: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),),
          
          
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DataTable(columns:[
              DataColumn(label: Text("Sl\nNO")),
              DataColumn(label: Text("Full Name")),
              DataColumn(label: Text("Adm.No")),
              DataColumn(label: Text("Class")),
              DataColumn(label: Text("Division")),
              DataColumn(label: Text("Address")),
              DataColumn(label: Text("Parent\nContact No")),
              DataColumn(label: Text("Parent Name")),
              DataColumn(label: Text("Profile\vView")),

            ], rows: [

              DataRow(cells:[

                DataCell(Text("1")),
                DataCell(Text("Akhil")),
                DataCell(Text("13425")),
                DataCell(Text("X")),
                DataCell(Text("A")),
                DataCell(Text("Manovar,Kollam,Kerala")),
                DataCell(Text("9876543210")),
                DataCell(Text("Raman")),
                DataCell(Text("Edit")),
              ]
              )


            ]
            ),
          )



          
        ],
      )),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      );

  DropdownMenuItem<String> buildMenuItem2(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      );
}
