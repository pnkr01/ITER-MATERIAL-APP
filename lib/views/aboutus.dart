import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.purple,
                Colors.greenAccent,
              ],
            ),
          ),
        ),
        title: Text(
          "About Us",
          style: TextStyle(
            fontFamily: "BebasNeue",
            fontSize: 30.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Sizer(
          builder: (BuildContext context, Orientation orientation,
              DeviceType deviceType) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "First of all thank you so much friend, for trying this app, We Respect you and your views.. ",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: "Lobster",
                      color: Colors.orange,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "In the larger picture if I zoom in for you, I will say it was not the idea behind creating this app, Just an idea that an app should be there where we will get all the pdf,ppts,book, solution and much more..I have integrated many other features also.. I have much more idea as, In majority of clubs there are some fest which are going on and club member have to keep on going the upstairs and downstairs, Instead of that they can advertise here in the Iter Material App, students can get to know about the fest and if they are intrested they can buy the tickets. \nWhile creating this app I enjoy while learning these things.. It was a great journey and more to go.. Clubs can host weeekly Hackathons, Competition for the Students.. In my days as I'm a batch of 2020-2024, We came online and don't know what to do, how to do, there is no guidance in which field I should go So I explored many areas and now I feel comfortable in App Dev(flutter) , So there is many section where user can get acess to guidances best website, open source , and much more exicting areas which we will add soon. \n",
                    style: TextStyle(
                        fontSize: 25.0,
                        fontFamily: "Lobster",
                        color: Colors.green,
                        ),
                  ),
                  Text(
                    "Codex Club : You all are true Inspiration for me, Because of you all I'm here, from 'Will I do Something' to 'Try You Will' you all are great.\n",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: "Lobster",
                      color: Colors.orange,
                    ),
                  ),
                  Text(
                    "\nTo Mention\n\nFamily\nAyush Kejriwal\nSourav Bera\nThere work Inspired me alot and learned many things from you and still learning.",
                    style: TextStyle(
                      fontSize: 35.0,
                      color: Colors.green,
                      fontFamily: "Signatra",
                    ),
                  ),
                  Text(
                    "\nIf you think this App have some potential to help someone and you also want to join to add more features to this app or help us in building good and healthy community for ITER Students..Please Join Us..We're a team of only 1 Person, and glad to onboard you.",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: "Lobster",
                      color: Colors.orange,
                    ),
                  ),
                  Text(
                    "\nI would like to mention my good friends, who always supported me in my ups and downs\n\nRahul Kumar\nManish Kumar Singh",
                    style: TextStyle(
                      fontSize: 35.0,
                      color: Colors.green,
                      fontFamily: "Signatra",
                    ),
                  ),
                  Text(
                    "\nPawan Kumar",
                    style: TextStyle(
                      fontSize: 35.0,
                      color: Colors.purple,
                      fontFamily: "Signatra",
                    ),
                  ),
                  Divider(
                    thickness: 2.0,
                    color: Colors.lightBlue,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
