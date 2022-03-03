import 'package:flutter/material.dart';
import 'package:iter_materials/widgets/errordialog.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class ClubDesign extends StatelessWidget {
  final List<String> clubshortInfo = [
    "The official coding community of ITER.",
    "We are a student run community.",
    "ITER Coding Wizard Club",
    "Nss Group of Soa",
    "Official CLASSICAL DANCE CLUB",
    "Soa Fashion Club",
    "ITER ROBOTICS CLUB",
    "JAAGO- Towards A Better Future",
    "Srishti - Brushing The Beyond \n Official Art Club of Soa University ",
    "SOA's Broadcasting Crew.Family inside , Superstars outside.",
    "ASME SOA Student Chapter",
    "ASCE SOA Student Chapter",
    "SOA STUDENTS CLUB",
    "TEDx SOA University",
    "INNOVATION & ENTREPRENEURSHIP",
    "SOA's official radio club.Fraternity,equality and equity.",
    "Music Club of Soa",
    "Drama Club of Soa",
    "Official DANCE CLUB of SOA University",
    "Basketball is not just a sport it's a LIFESTYLE",
    "LEARN DIFFERENT",
    "Soa FabLab By Karkhana",
    "EXPLORE YOUR VISION",
  ];
  final List<String> joinurl = [
    'https://www.instagram.com/codexiter/',
    'https://www.instagram.com/hackclubiter/',
    'https://www.instagram.com/iter.coding.wizards/',
    'https://www.instagram.com/soa__nss/',
    'https://www.instagram.com/soa_odanz_a/',
    'https://www.instagram.com/envogue_soa_fashion_club/',
    'https://www.instagram.com/iter_robotics_club/',
    'https://www.instagram.com/soa_jaago_official/',
    'https://www.instagram.com/srishticlub/',
    'https://www.instagram.com/virtualshowreel/',
    'https://www.instagram.com/asme_iter/',
    'https://www.instagram.com/asce_iter/',
    'https://www.instagram.com/soa_students_club/',
    'https://www.instagram.com/tedxsoauniversity/',
    'https://www.instagram.com/iec_ecell_soa/',
    'https://www.instagram.com/soa.radio/',
    'https://www.instagram.com/smc.fam/',
    'https://www.instagram.com/soa_dramatics_society/',
    'https://www.instagram.com/danza_house_of_hoofers/',
    'https://www.instagram.com/soabasketball/',
    'https://www.instagram.com/soaenglishcafe/',
    'https://www.instagram.com/soafablab/',
    'https://www.instagram.com/soa_photography_club_/',
  ];
  final List<String>? clubList = [
    'Codex Club',
    'Hack Club',
    'Coding Wizard Club',
    'SOA NSS',
    'ODanza Club',
    'Fashion Club',
    'Robotics Club',
    'Jaago Club',
    'Srishti Club',
    'Virtual Showreel',
    'ASME SOA Student Chapter',
    'ASCE SOA Student Chapter',
    'Soa Students Club',
    'Tedx Soa University',
    'INNOVATION & ENTREPRENEURSHIP Cell',
    'Soa Radio Club',
    'Soa Music Club',
    'Soa Dramatics Society',
    'Danza Club',
    'Soa BasketBall Club',
    'Soa English Cafe',
    'Soa Fab Lab',
    'SOA PHOTOGRAPHY CLUB',
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
    Color(0xFF738ac9),
    Color(0xFF1f0885),
    Color(0xFF2eb6d1),
    Color(0xFF037187),
    Color(0xFF45d9c5),
    Color(0xFF119642),
    Color(0xFF58cf46),
    Color(0xFF7dbde8),
    Color(0xFFa8c225),
    Color(0xFFbfa80f),
    Color(0xFFed894e),
    Color(0xFFdb261d),
    Color(0xffbde053),
    Color(0xff4ba326),
    Color(0xff4538d6),
    Color(0xFF45d9c5),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                elevation: 0.0,
                backgroundColor: Colors.white,
                expandedHeight: 20.0,
                floating: false,
                pinned: false,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Column(
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
                    )),
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
                        "Various Clubs of ITER",
                        style: TextStyle(
                          fontSize: 28.0,
                          fontFamily: "Signatra",
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                        ),
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
                            crossAxisCount: 1,
                            childAspectRatio:
                                (MediaQuery.of(context).size.width / (2 * 100)),
                            children: List.generate(
                              23,
                              (index) {
                                return Padding(
                                  padding: EdgeInsets.all(8),
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
                                      child: Column(
                                        children: [
                                          Text(
                                            clubList![index],
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              fontFamily: "VarelaRound",
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.02,
                                          ),
                                          Expanded(
                                            child: Text(
                                              clubshortInfo[index],
                                              style: TextStyle(
                                                fontSize: 21.0,
                                                color: Colors.white,
                                                fontFamily: "BebasNeue",
                                              ),
                                            ),
                                          ),
                                          ElevatedButton(
                                            onPressed: () async {
                                              if (await canLaunch(
                                                  joinurl[index])) {
                                                await launch(
                                                  joinurl[index],
                                                  universalLinksOnly: true,
                                                );
                                              } else {
                                                ErrorDialog(
                                                  message: "Cannot Open",
                                                );
                                              }
                                            },
                                            child: Shimmer.fromColors(
                                              baseColor: Colors.white,
                                              highlightColor: Colors.purple,
                                              child: Text(
                                                "Explore",
                                                style:
                                                    TextStyle(fontSize: 18.0),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
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
      ),
    );
  }
}
