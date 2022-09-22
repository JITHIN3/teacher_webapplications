import 'package:flutter/material.dart';
class NaviDrawer extends StatelessWidget {
  const NaviDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.white,
        child: SafeArea(
          child: SingleChildScrollView(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(30),
                      child: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                           "")),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: InkWell(
                        child: Text("dgg",

                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        onTap: (){


                        },),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, top: 10),
                      child: Text(
                        "hjm",
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: InkWell(
                          child: ListTile(
                              leading: Icon(
                                Icons.file_copy_outlined,
                                color: Colors.black,

                              ),
                              title: Text(
                                "Attendance",
                                style: TextStyle(
                                     fontWeight: FontWeight.w400),
                              )),
                          onTap: (){

                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => StudentsAttandece()));
                          }),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Divider(thickness: 1),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: InkWell(
                        onTap: () {

                        },
                        child: ListTile(
                            leading: Icon(Icons.payment_outlined,
                                color: Colors.black),
                            title: Text(
                              "Fee",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400),
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Divider(thickness: 1),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: InkWell(
                        child: ListTile(
                            leading: Icon(Icons.person,
                                color: Colors.black,),
                            title: Text(
                              "Profile",
                              style: TextStyle(
                               fontWeight: FontWeight.w400),
                            )),
                        onTap: (){


                        }, ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Divider(thickness: 1),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ListTile(
                          leading: Icon(Icons.info_sharp,
                              color: Colors.black,),
                          title: Text(
                            "Noticeboard",
                            style: TextStyle(
                                fontWeight: FontWeight.w400),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Divider(thickness: 1),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: InkWell(
                        child: ListTile(
                            leading: Icon(Icons.message_outlined,
                                color: Colors.black,),
                            title: Text(
                              "Message",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400),
                            )),
                        onTap: () {

                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Divider(thickness: 1),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ListTile(
                          leading: Icon(Icons.menu_book_outlined,
                              color: Colors.black),
                          title: Text(
                            "Syllabus",
                            style: TextStyle(
                               fontWeight: FontWeight.w400),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Divider(thickness: 1),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ListTile(
                          leading: Icon(Icons.analytics_outlined,
                              color: Colors.black),
                          title: Text(
                            "Mark",
                            style: TextStyle(
                               fontWeight: FontWeight.w400),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Divider(thickness: 1),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ListTile(
                          leading: Icon(Icons.library_books,
                              color: Colors.black,),
                          title: Text(
                            "Library",
                            style: TextStyle(
                                fontWeight: FontWeight.w400),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Divider(thickness: 1),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ListTile(
                          leading: Icon(Icons.bookmark,
                              color: Colors.black,),
                          title: Text(
                            "Achievements",
                            style: TextStyle(
                                fontWeight: FontWeight.w400),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Divider(thickness: 1),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ListTile(
                          leading: Icon(Icons.home_work_outlined,
                              color: Colors.black),
                          title: Text(
                            "Homework",
                            style: TextStyle(
                                 fontWeight: FontWeight.w400),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Divider(thickness: 1),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: InkWell(
                        onTap: () {

                        },
                        child: ListTile(
                            leading: Icon(Icons.calendar_today_rounded,
                                color: Colors.black, ),
                            title: Text(
                              "Calender",
                              style: TextStyle(
                                 fontWeight: FontWeight.w400),
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Divider(thickness: 1),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ListTile(
                          leading: Icon(Icons.calendar_view_day,
                              color: Colors.black,),
                          title: Text(
                            "Timetable",
                            style: TextStyle(
                          fontWeight: FontWeight.w400),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Divider(thickness: 1),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ListTile(
                          leading: Icon(Icons.calendar_today_outlined,
                              color: Colors.black,),
                          title: Text(
                            "Exam Schedule",
                            style: TextStyle(
                                fontWeight: FontWeight.w400),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Divider(thickness: 1),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: InkWell(
                        child: ListTile(
                            leading: Icon(Icons.logout,
                                color: Colors.red,),
                            title: Text(
                              "Logout",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.red),
                            ),
                            onTap: () {

                            }),
                      ),
                    ),
                  ],

              ),
        ),
      ),
    ));
  }
}
