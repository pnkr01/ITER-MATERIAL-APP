import 'package:flutter/material.dart';
import 'package:iter_materials/screen/login.dart';
import 'package:iter_materials/screen/registration.dart';

class AuthSCreen extends StatefulWidget {
  const AuthSCreen({Key? key}) : super(key: key);

  @override
  _AuthSCreenState createState() => _AuthSCreenState();
}

class _AuthSCreenState extends State<AuthSCreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.cyan,
                  Colors.amber,
                ],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              ),
            ),
          ),
          title: Center(
            child: Text(
              "ITER MATERIAL",
              style: TextStyle(
                  fontFamily: "Signatra", fontSize: 27.0, letterSpacing: 1.5),
            ),
          ),
          bottom: TabBar(
            automaticIndicatorColorAdjustment: true,
            indicatorColor: Colors.green,
            indicatorWeight: 3.0,
            tabs: [
              Tab(
                icon: Icon(Icons.login),
                text: "Log In",
              ),
              Tab(
                icon: Icon(Icons.app_registration_rounded),
                text: "Register",
              ),
            ],
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.cyan,
                Colors.amber,
              ],
            ),
          ),
          child: TabBarView(
            children: [
              LogIn(),
              Registration(),
            ],
          ),
        ),
      ),
    );
  }
}
