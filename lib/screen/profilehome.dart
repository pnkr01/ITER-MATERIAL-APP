import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:iter_materials/views/aboutus.dart';
import 'package:iter_materials/views/blogview.dart';
import 'package:iter_materials/views/bugreport.dart';
import 'package:iter_materials/views/clubdesign.dart';
import 'package:iter_materials/widgets/global.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProfileHome extends StatefulWidget {
  const ProfileHome({Key? key}) : super(key: key);

  @override
  _ProfileHomeState createState() => _ProfileHomeState();
}

class _ProfileHomeState extends State<ProfileHome> {
  int? activeIndex = 0;
  Stream? slides;
  List? slideList;
  _querydb() {
    slides = FirebaseFirestore.instance.collection('store').snapshots().map(
          (list) => list.docs.map(
            (doc) => doc.data(),
          ),
        );
  }

  @override
  void initState() {
    super.initState();
    _querydb();
  }
  final List<Color> colors = [
    Color(0xfff0bc81),
    Color(0xff7447c9),
    Color(0xffa86de3),
    Color(0xffF19821),
    Color(0xff9e7597),
    Color(0xff0454fc),
    Color(0xffa52ab8),
    Color(0xff201b6e),
    Color(0xff436073),
    Color(0xff62a5b3),
    Color(0xffaba559),
    Color(0xffe368ae),
    Color(0xffe68a7a),
    Color(0xff346b75),
    Color(0xffa52ab8),
  ];
  final List<String>? niche = [
    'Student Notice',
    'Exam Notice',
    'Time Table',
    'Result',
    'Hackathons',
    'Good Resources',
    'Internships',
    'Educational News',
    'OTV Twitter',
    'Guidance',
    'Jobs',
    'About Us',
    'Check Update',
    'Report Bugs',
    'Various Clubs',
  ];
  final List<String> url = [
    "https://www.soa.ac.in/iter-student-notice/",
    "https://www.soa.ac.in/iter-exam-notice/",
    "https://www.soa.ac.in/iter-time-table",
    "http://103.112.27.37:8282/CampusPortalSOA/index#/",
    "https://sites.google.com/view/materialapphackathons/home",
    "https://sites.google.com/view/itermaterialguidance/home",
    "https://sites.google.com/view/itermaterialinternships/home",
    "https://sites.google.com/view/itermateraleducation/home",
    "https://twitter.com/otvnews/with_replies?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor",
    "https://sites.google.com/view/itermaterialguidances/home",
    "https://sites.google.com/view/itermaterialjobs/home",
    "b",
    "https://github.com/pnkr01/IterMaterialApp",
    "http://103.112.27.37:8282/CampusPortalSOA/index#/",
    "http://103.112.27.37:8282/CampusPortalSOA/index#/",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffb196c4),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.height,
                child: StreamBuilder(
                  stream: slides,
                  builder: (context, AsyncSnapshot snap) {
                    if (snap.hasError) {
                      CircularProgressIndicator(
                        backgroundColor: Colors.white,
                      );
                    }
                    if (snap.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator(
                        backgroundColor: Color(0xffb196c4),
                      );
                    }
                    slideList = snap.data.toList();
                    return Stack(
                      children: [
                        CarouselSlider(
                          items: slideList!.map(
                            (index) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 2.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: CachedNetworkImage(
                                        fit: BoxFit.fill,
                                        imageUrl: index['img'],
                                        errorWidget: (context, url, error) =>
                                            Icon(Icons.error),
                                        placeholder: (context, url) =>
                                            Container(
                                          child: Center(
                                            child: CircularProgressIndicator(
                                              color: Colors.purple,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ).toList(),
                          options: CarouselOptions(
                            onPageChanged: (index, reason) {
                              setState(() {
                                activeIndex = index;
                              },);
                            },
                            pauseAutoPlayOnManualNavigate: true,
                            height: MediaQuery.of(context).size.height * 0.3,
                            aspectRatio: 16 / 9,
                            viewportFraction: 0.8,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            reverse: false,
                            autoPlay: true,
                            autoPlayInterval: Duration(seconds: 3),
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 500),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: true,
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                        Positioned(
                          bottom: MediaQuery.of(context).size.height * 0.00,
                          left: MediaQuery.of(context).size.width * 0.22,
                          child: buildIndicator(),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Trending Topics ",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontFamily: "VarelaRound",
                          color: Colors.black,
                        ),
                      ),
                      Image.asset(
                        "images/aa.gif",
                        width: 50,
                      ),
                    ],
                  ),
                ],
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
                15,
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
                                  title: niche![index],
                                  blogUrl: url[index],
                                ),
                              ),
                            );
                            break;
                          case 1:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BlogView(
                                  title: niche![index],
                                  blogUrl: url[index],
                                ),
                              ),
                            );
                            break;
                          case 2:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BlogView(
                                  title: niche![index],
                                  blogUrl: url[index],
                                ),
                              ),
                            );
                            break;
                          case 3:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BlogView(
                                  title: niche![index],
                                  blogUrl: url[index],
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
                                  title: niche![index],
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
                                  title: niche![index],
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
                                  title: niche![index],
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
                                  title: niche![index],
                                ),
                              ),
                            );
                            break;
                          case 8:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BlogView(
                                  blogUrl: url[index],
                                  title: niche![index],
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
                                  title: niche![index],
                                ),
                              ),
                            );
                            break;
                          case 10:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BlogView(
                                  title: niche![index],
                                  blogUrl: url[index],
                                ),
                              ),
                            );
                            break;
                          case 11:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AboutUs(),
                              ),
                            );
                            break;
                          case 12:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BlogView(
                                  title: niche![index],
                                  blogUrl: url[index],
                                ),
                              ),
                            );
                            break;
                          case 13:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BugReport(
                                  username:
                                      sharedPreferences!.getString("userName"),
                                ),
                              ),
                            );
                            break;
                          case 14:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ClubDesign(),
                              ),
                            );
                            break;
                          default:
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
                            niche![index],
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

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex!,
        count: slideList!.length,
        effect: CustomizableEffect(
          dotDecoration: DotDecoration(
            width: 24,
            height: 12,
            color: Colors.green,
            borderRadius: BorderRadius.circular(16),
            verticalOffset: 0,
          ),
          activeDotDecoration: DotDecoration(
            width: 32,
            height: 12,
            color: Colors.indigo,
            rotationAngle: 180,
            verticalOffset: -10,
            borderRadius: BorderRadius.circular(24),
          ),
          inActiveColorOverride: (i) => colors[i],
        ),
      );
}
