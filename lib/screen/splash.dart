import 'dart:async';
import 'package:flutter/material.dart';
import 'package:iter_materials/screen/home.dart';
import 'package:iter_materials/screen/screenone.dart';
import 'package:iter_materials/widgets/global.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  setTime() {
    Timer(
      Duration(seconds: 3),
      () async {
        if (firebaseAuth.currentUser != null) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Screenone(),
            ),
          );
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    setTime();
  }

@override
  void dispose() {
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Image.asset("images/8.gif"),
            Text(
              "Developed By Pawan Kumar",
              style: TextStyle(
                  fontSize: 25.0, fontFamily: "Lobster", color: Colors.pink),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Center(
              child: Text(
                " Telegram id : @Pawan_21",
                style: TextStyle(
                    fontSize: 15.0, fontFamily: "Lobster", color: Colors.black),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            CircularProgressIndicator(
              backgroundColor: Colors.orange,
              strokeWidth: 5.0,
              semanticsLabel: "50",
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}