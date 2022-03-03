import 'package:flutter/material.dart';
import 'package:iter_materials/views/blogview.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  final List<String>? semesterList = [
    'Semester 1',
    'Semester 2',
    'Semester 3',
    'Semester 4',
    'Semester 5',
    'Semester 6',
    'Semester 7',
    'Semester 8',
    'Contributers',
    'Miscellaneous',
  ];
  final List<Color> colors = [
    Color(0xffF19821),
    Color(0xffb457d4),
    Color(0xff0454fc),
    Color(0xff201b6e),
    Color(0xff436073),
    Color(0xffF95F35),
    Color(0xFFCB1841),
    Color(0xFF2604DE),
    Color(0xff436073),
    Color(0xff5fc992),
    Color(0xffb457d4),
  ];
  final List url = [
    'https://sites.google.com/view/itermaterialsemone/home',
    'https://sites.google.com/view/itermaterialsemtwo/home',
    'https://sites.google.com/view/itermaterialsemthree/home',
    'https://sites.google.com/view/itermaterialsemfour/home',
    'https://sites.google.com/view/itermaterialsemfive/home',
    'https://sites.google.com/view/itermaterialsemsix/home',
    'https://sites.google.com/view/itermaterialsemseven/home',
    'https://sites.google.com/view/itermaterialsemeight/home',
    'https://sites.google.com/view/itermaterialcontributors/home',
    'https://sites.google.com/view/itermaterialmisc/home',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Theme.of(context).primaryColor,
              expandedHeight: 20.0,
              floating: false,
              pinned: false,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  "Explorer --> Aimer --> Achiever",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ];
        },
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    child: Text(
                      "Get all Material At One Place",
                      style: TextStyle(
                          fontSize: 28.0,
                          fontFamily: "Signatra",
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.pinkAccent),
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GridView.count(
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          crossAxisCount: 2,
                          childAspectRatio:
                              (MediaQuery.of(context).size.width / (2 * 100)),
                          children: List.generate(
                            10,
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
                                              title: "Semester 1",
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
                                              title: "Semester 2",
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
                                              title: "Semester 3",
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
                                              title: "Semester 4",
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
                                              title: "Semester 5",
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
                                              title: "Semester 6",
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
                                              title: "Semester 7",
                                            ),
                                          ),
                                        );
                                        break;
                                      case 7:
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => BlogView(
                                              blogUrl: url[index],
                                              title: "Semester 8",
                                            ),
                                          ),
                                        );
                                        break;
                                      case 8: //contributor thanks
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => BlogView(
                                              blogUrl: url[index],
                                              title: "Contributors",
                                            ),
                                          ),
                                        );
                                        break;
                                      case 9:
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => BlogView(
                                              blogUrl: url[index],
                                              title: "Miscellaneous",
                                            ),
                                          ),
                                        );
                                        break;
                                    }
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 2,
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
                                        semesterList![index],
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
                        SizedBox(
                          height: 50.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
