import 'package:flutter/material.dart';
import 'package:iter_materials/screen/authscreen.dart';

class Screentwo extends StatefulWidget {
  const Screentwo({Key? key}) : super(key: key);

  @override
  _ScreentwoState createState() => _ScreentwoState();
}

class _ScreentwoState extends State<Screentwo>
    with SingleTickerProviderStateMixin {
  bool? hasInternt;
  AnimationController? controller;
  Animation? coloranimation;
  Animation? sizeanimation;
  Animation? sizeContainerWidthanimation;
  Animation? sizeContainerHeightanimation;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    sizeanimation = Tween<double>(begin: 0.0, end: 75.0).animate(controller!);
    sizeContainerWidthanimation =
        Tween<double>(begin: 0.0, end: 180.0).animate(controller!);
    sizeContainerHeightanimation =
        Tween<double>(begin: 0.0, end: 80.0).animate(controller!);
    coloranimation = ColorTween(begin: Colors.pink, end: Colors.pinkAccent)
        .animate(controller!);

    controller!.addListener(() {
      setState(() {});
    });
    controller!.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Text(
              "Get almost all related to education",
              style: TextStyle(
                  fontSize: 25.0, fontFamily: "Lobster", color: Colors.blue),
            ),
            Image.asset(
              "images/4.gif",
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AuthSCreen(),
                  ),
                );
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                decoration: BoxDecoration(
                  color: coloranimation!.value,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                height: sizeContainerHeightanimation!.value,
                width: sizeContainerWidthanimation!.value,
                child: Icon(
                  Icons.arrow_forward,
                  size: sizeanimation!.value,
                  color: Colors.white,
                ),
                curve: Curves.fastLinearToSlowEaseIn,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
