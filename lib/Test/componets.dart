import 'package:flutter/material.dart';
class CompanyName extends StatefulWidget {
  const CompanyName({Key? key}) : super(key: key);

  @override
  State<CompanyName> createState() => _CompanyNameState();
}

class _CompanyNameState extends State<CompanyName> {
  @override
  Widget build(BuildContext context) {
    return Container(height: 70,child: Center(child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [

      Text("JITHIN",style: TextStyle(color: Colors.white,fontSize: 18),)
    ],)),);
  }
}
