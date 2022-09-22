import 'package:flutter/material.dart';
import 'package:teacher_webapplication/Screens/Profile/ProfileScreen.dart';
class TopBar extends StatefulWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Pages"),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Features"),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Apps"),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(Icons.search,
                      color: Colors.blue, size: 18),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(Icons.category_outlined,
                      color: Colors.blue, size: 18),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(Icons.graphic_eq_outlined,
                      color: Colors.blue, size: 18),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(Icons.shopping_basket_sharp,
                      color: Colors.blue, size: 18),
                ),
                Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(child: Text("Hi,Sian"),onTap: (){

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Profile()),
                      );
                    },)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
