import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:teacher_webapplication/Screens/Deviceinfo.dart';
import 'package:teacher_webapplication/Screens/MenuBar/MenuBarItems.dart';
import 'package:teacher_webapplication/Screens/TopBar/SecondBar.dart';
import 'package:teacher_webapplication/Screens/TopBar/TopAppBar.dart';
import 'package:teacher_webapplication/Screens/navdrawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Menu(),
            //MenuBar

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: TopBar()),
                    ],
                  ),
                  Container(color: Colors.white, child: Divider()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: SecondTopBar()),
                    ],
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Padding(
                  //       padding: const EdgeInsets.all(
                  //         20,
                  //       ),
                  //       child: Container(
                  //         decoration: BoxDecoration(
                  //             color: Colors.white,
                  //             borderRadius: BorderRadius.circular(10)),
                  //         width: 300,
                  //         height: 400,
                  //         child: Expanded(
                  //           child: Stack(
                  //             children: [
                  //               Column(
                  //                 crossAxisAlignment: CrossAxisAlignment.start,
                  //                 children: [
                  //                   Expanded(
                  //                     child: Container(
                  //                         decoration: BoxDecoration(
                  //                             color: Colors.redAccent,
                  //                             borderRadius:
                  //                                 BorderRadius.circular(10)),
                  //                         child: Row(
                  //                           mainAxisAlignment:
                  //                               MainAxisAlignment.spaceBetween,
                  //                           crossAxisAlignment:
                  //                               CrossAxisAlignment.start,
                  //                           children: [
                  //                             Padding(
                  //                               padding:
                  //                                   const EdgeInsets.all(20),
                  //                               child: Text(
                  //                                 "Categories",
                  //                                 style: TextStyle(
                  //                                     color: Colors.white,
                  //                                     fontWeight:
                  //                                         FontWeight.w400),
                  //                               ),
                  //                             ),
                  //
                  //                             Padding(
                  //                               padding: const EdgeInsets.all(10),
                  //                               child: Container( decoration: BoxDecoration(
                  //                                 color: Colors.white.withOpacity(.2),
                  //                                 borderRadius: BorderRadius.circular(5
                  //
                  //                                 ),
                  //                               ),child: Padding(
                  //                                 padding: const EdgeInsets.all(8),
                  //                                 child: RichText(
                  //                                   text: TextSpan(
                  //                                     children: [
                  //                                       TextSpan(
                  //                                         text: "Export ",style: TextStyle(color: Colors.white,fontSize: 12)
                  //                                       ),
                  //                                       WidgetSpan(
                  //                                         child: Icon(Icons.keyboard_arrow_down_rounded, size: 14,color: Colors.white,),
                  //                                       ),
                  //
                  //                                     ],
                  //                                   ),
                  //                                 ),
                  //                               )),
                  //                             )
                  //
                  //                           ],
                  //                         )),
                  //                   ),
                  //                   Expanded(
                  //                     child: Container(
                  //                       decoration: BoxDecoration(
                  //                         color: Colors.white,
                  //                         borderRadius: BorderRadius.only(
                  //                           bottomLeft: Radius.circular(10),
                  //                           bottomRight: Radius.circular(10),
                  //                         ),
                  //                       ),
                  //                       child: Padding(
                  //                         padding:
                  //                             const EdgeInsets.only(top: 30),
                  //                         child: Row(
                  //                           mainAxisAlignment:
                  //                               MainAxisAlignment.spaceAround,
                  //                           children: [
                  //                             Padding(
                  //                               padding: const EdgeInsets.only(
                  //                                   left: 20),
                  //                               child: Container(
                  //                                 height: 100,
                  //                                 width: 100,
                  //                                 decoration: BoxDecoration(
                  //                                     color: Colors
                  //                                         .pinkAccent.shade200,
                  //                                     borderRadius:
                  //                                         BorderRadius.circular(
                  //                                             10)),
                  //                                 child: Column(
                  //                                     crossAxisAlignment:
                  //                                         CrossAxisAlignment
                  //                                             .start,
                  //                                     children: [
                  //                                       Padding(
                  //                                         padding:
                  //                                             const EdgeInsets
                  //                                                 .all(10),
                  //                                         child: Icon(
                  //                                           Icons.graphic_eq,
                  //                                           color:
                  //                                               Colors.orange,
                  //                                         ),
                  //                                       ),
                  //                                       Padding(
                  //                                           padding:
                  //                                               const EdgeInsets
                  //                                                   .all(10),
                  //                                           child: Text("")),
                  //                                     ]),
                  //                               ),
                  //                             ),
                  //                             Padding(
                  //                               padding: const EdgeInsets.only(
                  //                                   right: 20),
                  //                               child: Container(
                  //                                 height: 100,
                  //                                 width: 100,
                  //                                 decoration: BoxDecoration(
                  //                                     color: Colors
                  //                                         .orange.shade100,
                  //                                     borderRadius:
                  //                                         BorderRadius.circular(
                  //                                             10)),
                  //                                 child: Column(children: [
                  //                                   Icon(Icons.graphic_eq)
                  //                                 ]),
                  //                               ),
                  //                             ),
                  //                           ],
                  //                         ),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //               Center(
                  //                 child: Column(
                  //                   mainAxisAlignment: MainAxisAlignment.center,
                  //                   children: [
                  //                     Row(
                  //                       mainAxisAlignment:
                  //                           MainAxisAlignment.spaceAround,
                  //                       children: [
                  //                         Padding(
                  //                           padding:
                  //                               const EdgeInsets.only(left: 20),
                  //                           child: Container(
                  //                             height: 100,
                  //                             width: 100,
                  //                             decoration: BoxDecoration(
                  //                                 color: Colors.orange.shade100,
                  //                                 borderRadius:
                  //                                     BorderRadius.circular(
                  //                                         10)),
                  //                             child: Padding(
                  //                               padding:
                  //                                   const EdgeInsets.all(10),
                  //                               child: Column(
                  //                                   mainAxisAlignment:
                  //                                       MainAxisAlignment
                  //                                           .center,
                  //                                   crossAxisAlignment:
                  //                                       CrossAxisAlignment
                  //                                           .start,
                  //                                   children: [
                  //                                     Icon(
                  //                                       Icons.graphic_eq,
                  //                                       color: Colors.orange,
                  //                                     ),
                  //                                     SizedBox(
                  //                                       height: 7,
                  //                                     ),
                  //                                     Text(
                  //                                       "Weekly Sales",
                  //                                       style: TextStyle(
                  //                                           fontSize: 12),
                  //                                     )
                  //                                   ]),
                  //                             ),
                  //                           ),
                  //                         ),
                  //                         Padding(
                  //                           padding: const EdgeInsets.only(
                  //                               right: 20),
                  //                           child: Container(
                  //                             height: 100,
                  //                             width: 100,
                  //                             decoration: BoxDecoration(
                  //                                 color: Colors.purple.shade50,
                  //                                 borderRadius:
                  //                                     BorderRadius.circular(
                  //                                         10)),
                  //                             child: Padding(
                  //                               padding:
                  //                                   const EdgeInsets.all(10),
                  //                               child: Column(
                  //                                   mainAxisAlignment:
                  //                                       MainAxisAlignment
                  //                                           .center,
                  //                                   crossAxisAlignment:
                  //                                       CrossAxisAlignment
                  //                                           .start,
                  //                                   children: [
                  //                                     Icon(
                  //                                       Icons.person_add_alt_1,
                  //                                       color:
                  //                                           Colors.deepPurple,
                  //                                     ),
                  //                                     SizedBox(
                  //                                       height: 7,
                  //                                     ),
                  //                                     Text(
                  //                                       "New User",
                  //                                       style: TextStyle(
                  //                                           fontSize: 12),
                  //                                     )
                  //                                   ]),
                  //                             ),
                  //                           ),
                  //                         ),
                  //                       ],
                  //                     ),
                  //                   ],
                  //                 ),
                  //               )
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // )
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
