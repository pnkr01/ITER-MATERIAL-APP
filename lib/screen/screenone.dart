import 'package:flutter/material.dart';
import 'package:iter_materials/screen/screentwo.dart';

class Screenone extends StatefulWidget {
  @override
  _ScreenoneState createState() => _ScreenoneState();
}

class _ScreenoneState extends State<Screenone>
    with SingleTickerProviderStateMixin {
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
    coloranimation =
        ColorTween(begin: Colors.blue, end: Colors.purple).animate(controller!);

    controller!.addListener(() {
      setState(() {});
    });
    controller!.forward();
  }
  @override
  void dispose() {
    super.dispose();
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
              "Welcome To Iter Material App",
              style: TextStyle(
                  fontSize: 25.0, fontFamily: "Lobster", color: Colors.blue),
            ),
            Image.asset(
              "images/5.gif",
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screentwo(),
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
                  color: Colors.blue,
                ),
                curve: Curves.fastOutSlowIn,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
