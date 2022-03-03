import 'package:flutter/material.dart';
import 'package:iter_materials/views/blogview.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final List niche = [
    'Math Calculator',
    'Misc 0',
    'Misc 1',
    'Misc 2',
    'Misc 3',
    'Misc 4',
    'Developer Github',
  ];

  final List colors = [
    Color(0xffe08d2d),
    Color(0xffb82f25),
    Color(0xff14b368),
    Color(0xff98de52),
    Color(0xfff26bce),
    Color(0xffe6b950),
    Color(0xff0454fc),
  ];
  final List url = [
    'https://sites.google.com/view/itermaterialmath/home',
    'https://sites.google.com/view/itermaterialad/home',
    'https://sites.google.com/view/itermaterialmiscone/home',
    'https://sites.google.com/view/itermaterialmisctwo/home',
    'https://sites.google.com/view/itermaterialmiscthree/home',
    'https://sites.google.com/view/itermaterialmiscfour/home',
    'https://github.com/pnkr01',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              child: Image.asset(
                'images/3.gif',
                height: 200.0,
                ),
            ),
          ),
          SliverToBoxAdapter(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "Various Tools",
                  style: TextStyle(
                      fontSize: 32.0,
                      fontFamily: "BebasNeue",
                      color: Colors.pink),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: GridView.count(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              crossAxisCount: 2,
              childAspectRatio: (MediaQuery.of(context).size.width / (2 * 100)),
              children: List.generate(
                7,
                (index) {
                  return Padding(
                    padding: EdgeInsets.all(8),
                    child: GestureDetector(
                      onTap: () {
                        switch (index) {
                          case 0:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BlogView(
                                  blogUrl: url[index],
                                  title: 'Maths Solver',
                                ),
                              ),
                            );
                            break;
                          case 1:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BlogView(
                                  blogUrl: url[index],
                                  title: 'Misc 0',
                                ),
                              ),
                            );
                            break;
                          case 2:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BlogView(
                                  blogUrl: url[index],
                                  title: 'Misc 1',
                                ),
                              ),
                            );
                            break;
                          case 3:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BlogView(
                                  blogUrl: url[index],
                                  title: 'Misc 2',
                                ),
                              ),
                            );
                            break;
                          case 4:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BlogView(
                                  blogUrl: url[index],
                                  title: 'Misc 3',
                                ),
                              ),
                            );
                            break;
                          case 5:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BlogView(
                                  blogUrl: url[index],
                                  title: 'Misc 4',
                                ),
                              ),
                            );
                            break;
                          case 6:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BlogView(
                                  blogUrl: url[index],
                                  title: "Pawan Kumar's Profile",
                                ),
                              ),
                            );
                            break;
                        }
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          shape: BoxShape.rectangle,
                          color: colors[index],
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(
                            16.0,
                            16.0,
                            0.0,
                            0.0,
                          ),
                          child: Text(
                            niche[index],
                            style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: "VarelaRound",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 80.0,
            ),
          ),
        ],
      ),
    );
  }
}
