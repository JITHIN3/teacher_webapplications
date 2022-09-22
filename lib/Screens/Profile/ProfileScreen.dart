import 'package:flutter/material.dart';
import 'package:teacher_webapplication/Screens/Deviceinfo.dart';
import 'package:teacher_webapplication/Screens/MenuBar/MenuBarItems.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.white,
                width: Helper.getScreenWidth(context),
                height: 50,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text("Profile"),
                      )
                    ]),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Expanded(
                        child: Container(
                            height: 300,
                            width: 230,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 200,
                                  width: 230,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://media.istockphoto.com/photos/headshot-portrait-of-smiling-male-employee-in-office-picture-id1309328823?b=1&k=20&m=1309328823&s=170667a&w=0&h=a-f8vR5TDFnkMY5poQXfQhDSnK1iImIfgVTVpFZi_KU="),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                    ),
                                  ),
                                  height: 100,
                                  width: 250,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Alfred",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Teacher - Primary",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 11),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text("ID : INBSFVVDN",
                                          style: TextStyle(fontSize: 12))
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(
                        right: 20,
                        top: 20,
                      ),
                      child: Container(
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Alfred",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12)),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Divider(),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Address",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11)),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "31,The stree rodar,coimbathor\nTamilnadu",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.grey),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Divider(),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Expanded(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Relegion",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 11)),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "Christian",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.grey),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 80),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Date Of Birth",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 11)),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "01 JAN 1999",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.grey),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Divider(),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Expanded(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Category",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 11)),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "Ganeral",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.grey),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 80),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Date Of Joining",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 11)),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "01 MAR 2021",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.grey),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Divider(),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Expanded(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Cast",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 11)),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "Christian",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.grey),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 80),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Material Status",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 11)),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "Single",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.grey),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Divider(),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Expanded(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Phone",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 11)),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "8943XXXXX3",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.grey),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 80),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Email",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 11)),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "Alfred199@gmail.com",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.grey),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
