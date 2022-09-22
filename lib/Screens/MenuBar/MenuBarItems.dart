import 'package:flutter/material.dart';

import '../Deviceinfo.dart';
class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 6, 13, 26),
        height: Helper.getScreenHeight(context),
        width: Helper.getScreenWidth(context) * .15,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "METRONIC",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Dashboard",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w200),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "CUSTOM",
                style: TextStyle(
                    color: Colors.white.withOpacity(.2),
                    fontSize: 13,
                    fontWeight: FontWeight.w300),
              ),
              ExpansionTile(
                collapsedIconColor: Colors.white,
                leading:
                Icon(Icons.apps_outlined, color: Colors.blueAccent),
                title: Text(
                  "Application",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w200),
                ),
                children: [
                  ListTile(
                      leading: Icon(Icons.remove,
                          color: Colors.white.withOpacity(.3),
                          size: 10),
                      title: Text("User",
                          style: TextStyle(
                              color: Colors.white.withOpacity(.3),
                              fontSize: 13)),
                      trailing: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white.withOpacity(.3),
                        size: 10,
                      )),
                  ListTile(
                    leading: Icon(
                      Icons.remove,
                      color: Colors.white.withOpacity(.3),
                      size: 10,
                    ),
                    title: Text("Contact",
                        style: TextStyle(
                            color: Colors.white.withOpacity(.3),
                            fontSize: 13)),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white.withOpacity(.3),
                      size: 10,
                    ),
                  ),
                  ListTile(
                      leading: Icon(Icons.remove,
                          color: Colors.white.withOpacity(.3),
                          size: 10),
                      title: Text("Chat",
                          style: TextStyle(
                              color: Colors.white.withOpacity(.3),
                              fontSize: 13)),
                      trailing: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white.withOpacity(.3),
                        size: 10,
                      )),
                ],
              ),
              SizedBox(height: 10),
              Text(
                "LAYOUT",
                style: TextStyle(
                    color: Colors.white.withOpacity(.2),
                    fontSize: 13,
                    fontWeight: FontWeight.w300),
              ),
              ListTile(
                  leading: Icon(Icons.add_chart,
                      color: Colors.white.withOpacity(.3), size: 10),
                  title: Text("Subheaders",
                      style: TextStyle(
                          color: Colors.white.withOpacity(.3),
                          fontSize: 13)),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white.withOpacity(.3),
                    size: 10,
                  )),
              ListTile(
                  leading: Icon(Icons.sort_outlined,
                      color: Colors.white.withOpacity(.3), size: 10),
                  title: Text("Ganeral",
                      style: TextStyle(
                          color: Colors.white.withOpacity(.3),
                          fontSize: 13)),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white.withOpacity(.3),
                    size: 10,
                  )),
              ListTile(
                  leading: Icon(Icons.remove,
                      color: Colors.white.withOpacity(.3), size: 10),
                  title: Text("Builder",
                      style: TextStyle(
                          color: Colors.white.withOpacity(.3),
                          fontSize: 13)),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white.withOpacity(.3),
                    size: 10,
                  )),
              SizedBox(height: 10),
              Text(
                "COMPONENTS",
                style: TextStyle(
                    color: Colors.white.withOpacity(.2),
                    fontSize: 13,
                    fontWeight: FontWeight.w300),
              ),
              ListTile(
                  leading: Icon(Icons.add_chart,
                      color: Colors.white.withOpacity(.3), size: 10),
                  title: Text("Base",
                      style: TextStyle(
                          color: Colors.white.withOpacity(.3),
                          fontSize: 13)),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white.withOpacity(.3),
                    size: 10,
                  )),
              ListTile(
                  leading: Icon(Icons.sort_outlined,
                      color: Colors.white.withOpacity(.3), size: 10),
                  title: Text("Custom",
                      style: TextStyle(
                          color: Colors.white.withOpacity(.3),
                          fontSize: 13)),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white.withOpacity(.3),
                    size: 10,
                  )),
              ListTile(
                  leading: Icon(Icons.remove,
                      color: Colors.white.withOpacity(.3), size: 10),
                  title: Text("Extended",
                      style: TextStyle(
                          color: Colors.white.withOpacity(.3),
                          fontSize: 13)),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white.withOpacity(.3),
                    size: 10,
                  )),
            ],
          ),
        ));
  }
}
