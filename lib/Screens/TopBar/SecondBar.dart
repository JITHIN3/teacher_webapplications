import 'package:flutter/material.dart';
class SecondTopBar extends StatefulWidget {
  const SecondTopBar({Key? key}) : super(key: key);

  @override
  State<SecondTopBar> createState() => _SecondTopBarState();
}

class _SecondTopBarState extends State<SecondTopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Dashboard"),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("#XRS-33",
                style: TextStyle(color: Colors.grey)),
          ),
          Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange.withOpacity(.1),
                ),
                child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text("Add New",
                          style:
                          TextStyle(color: Colors.orange)),
                    )),
              )),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text("Today")),
                Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text("Month")),
                Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text("Year")),
                Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                      ),
                      child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Text("Action",
                                style: TextStyle(
                                    color: Colors.grey)),
                          )),
                    )),
                Padding(
                    padding: const EdgeInsets.all(10),
                    child: Icon(Icons.request_page_rounded,
                        color:
                        Colors.green.withOpacity(.5))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
