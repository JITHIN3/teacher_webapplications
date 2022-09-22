import 'package:flutter/material.dart';
import 'package:teacher_webapplication/Test/componets.dart';
import 'package:teacher_webapplication/Test/navbar.dart';

class TestHomeScreen extends StatefulWidget {
  const TestHomeScreen({Key? key}) : super(key: key);

  @override
  State<TestHomeScreen> createState() => _TestHomeScreenState();
}

class _TestHomeScreenState extends State<TestHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: 100,
      color: Color.fromARGB(255, 6, 13, 26),
    child: Stack(children: [

      CompanyName(),
      Align(alignment: Alignment.center,child: NavBars())



    ]),);
  }
}
