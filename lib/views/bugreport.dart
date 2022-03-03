import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class BugReport extends StatefulWidget {
  String? username;
  BugReport({this.username});

  @override
  _BugReportState createState() => _BugReportState();
}

class _BugReportState extends State<BugReport> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Bug Report/Suggestion",
          style: TextStyle(
              fontSize: 21.0,
              fontFamily: "Lobster",
              letterSpacing: 1,
              color: Colors.white),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 15.0,
            ),
            Center(
              child: Shimmer.fromColors(
                baseColor: Colors.purple,
                highlightColor: Colors.yellow,
                child: Text(
                  "Hi " + widget.username! + "! Welcome",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontFamily: "BebasNeue"
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Sizer(
                          builder: (BuildContext context,
                              Orientation orientation, DeviceType deviceType) {
                            return Text(
                              "First of all thankyou for using this app, Please share your experience of using this app , if you find any error or bugs please let us know and we will fix that in next update soon. As this is the first update so there is high possibility of bug, Your suggestion helps me to make this app bug free. We are trying our best to integrate more educational related stuffs here..If you have any idea please drop us message in mail or create an issue in github.\n\nBe ITERIANS..",
                              style: TextStyle(
                                  fontSize: 35.0,
                                  fontFamily: "Signatra",
                                  letterSpacing: 1,
                                  color: Colors.blue),
                            );
                          },
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Shimmer.fromColors(
                              child: Text(
                                "Mail us: \nmaterialitercare@gmail.com",
                                style: TextStyle(
                                  fontSize: 27.0
                                ),
                                ), 
                              baseColor: Colors.black, 
                              highlightColor: Colors.red
                              )
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
