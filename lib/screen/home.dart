import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:iter_materials/screen/authscreen.dart';
import 'package:iter_materials/screen/explorepage.dart';
import 'package:iter_materials/screen/profilehome.dart';
import 'package:iter_materials/screen/settingspage.dart';
import 'package:iter_materials/widgets/global.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPageIndex = 0;
  final screen = [
    ProfileHome(),
    ExplorePage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final item = [
      Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Icon(
              Icons.home,
              color: Colors.blueGrey,
            ),
            Text("Home"),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Icon(
              Icons.explore,
              color: Colors.red,
            ),
            Text("Explore"),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Icon(
              Icons.settings,
              color: Colors.teal,
            ),
            Text("Tools"),
          ],
        ),
      ),
    ];
    return Container(
      color: Colors.white,
      child: SafeArea(
        top: false,
        child: ClipRRect(
          child: Scaffold(
            appBar: AppBar(
              shadowColor: Colors.black,
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              title: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ITER MATERIAL",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Visibility(
                    visible: true,
                    child: Text(
                      "Notes,Books,Assignments and More",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                ],
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.exit_to_app),
                  color: Colors.black,
                  onPressed: () async {
                    await firebaseAuth.signOut().then((value) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AuthSCreen(),
                        ),
                      );
                    });
                  },
                ),
              ],
            ),
            bottomNavigationBar: CurvedNavigationBar(
              backgroundColor: Colors.transparent,
              onTap: (index) {
                setState(() {
                  _selectedPageIndex = index;
                });
              },
              items: item,
              animationCurve: Curves.easeInOut,
              animationDuration: Duration(milliseconds: 600),
            ),
            body: screen[_selectedPageIndex],
            backgroundColor: Color(0xffb196c4),
          ),
        ),
      ),
    );
  }
}


