import 'package:flutter/material.dart';

class NavBars extends StatefulWidget {
  const NavBars({Key? key}) : super(key: key);

  @override
  State<NavBars> createState() => _NavBarsState();
}

class _NavBarsState extends State<NavBars> {
  List<bool> selected = [true, false, false, false, false];

  void select(int n) {
    for (int i = 0; i < 5; i++) {
      if (i != n) {
        selected[i] = false;
      } else {
        selected[i] = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: Column(children: [
        NavBatitem(
          active: selected[0],
          icon: Icons.home,
          touched: () {
            setState(() {
              select(0);
            });
          },
        ),
        NavBatitem(
          active: selected[1],
          icon: Icons.settings,
          touched: () {
            setState(() {
              select(1);
            });
          },
        ),
        NavBatitem(
          active: selected[2],
          icon: Icons.home,
          touched: () {
            setState(() {
              select(2);
            });
          },
        )
      ]),
    );
  }
}

class NavBatitem extends StatefulWidget {
  final IconData? icon;
  final Function touched;
  final bool active;

  NavBatitem({Key? key, required this.active, this.icon, required this.touched})
      : super(key: key);

  @override
  State<NavBatitem> createState() => _NavBatitemState();
}

class _NavBatitemState extends State<NavBatitem> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          widget.touched();
        },
        splashColor: Colors.white,
        hoverColor: Colors.white12,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 3),
          child: Row(children: [
            Container(
              height: 60,
              width: 80,
              child: Row(children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 475),
                  height: 35,
                  width: 5,
                  decoration: BoxDecoration(
                      color: widget.active ? Colors.white : Colors.transparent,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Icon(
                    widget.icon,
                    color: widget.active ? Colors.white : Colors.white54,
                    size: 19,
                  ),
                )
              ]),
            )
          ]),
        ),
      ),
    );
  }
}
