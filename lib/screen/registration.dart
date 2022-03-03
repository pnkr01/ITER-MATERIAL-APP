import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iter_materials/screen/home.dart';
import 'package:iter_materials/widgets/customtextfield.dart';
import 'package:iter_materials/widgets/errordialog.dart';
import 'package:iter_materials/widgets/global.dart';
import 'package:iter_materials/widgets/loadingdialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  final GlobalKey<FormState> _globalkey = GlobalKey<FormState>();

  validate() {
    if (namecontroller.text.isNotEmpty &&
        emailcontroller.text.isNotEmpty &&
        passwordcontroller.text.isNotEmpty) {
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return LoadingDialog(
            message: "Registering..",
          );
        },
      );
      autheticateUser();
    } else {
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return ErrorDialog(message: "Please fill all blanks");
        },
      );
    }
  }

  void autheticateUser() async {
    User? currentUser;
    await firebaseAuth
        .createUserWithEmailAndPassword(
      email: emailcontroller.text.trim(),
      password: passwordcontroller.text.trim(),
    )
        .then((auth) {
      currentUser = auth.user;
    }).catchError((e) {
      Navigator.pop(context);
      showDialog(
        context: context,
        builder: (context) {
          return ErrorDialog(message: e!.message.toString());
        },
      );
    });
    if (currentUser != null) {
      saveDataToFirebase(currentUser!).then((value) {
        Navigator.pop(context);
        Route newRoute = MaterialPageRoute(builder: (c) => HomePage());
        Navigator.pushReplacement(context, newRoute);
      });
    }
  }

  Future saveDataToFirebase(User? currentUser) async {
    FirebaseFirestore.instance.collection("users").doc(currentUser!.uid).set(
          ({
            "userName": namecontroller.text.toString(),
            "userEmail": currentUser.email.toString(),
            "userUid": currentUser.uid,
          }),
        );

    SharedPreferences? sharedPreferences =
        await SharedPreferences.getInstance();
    await sharedPreferences.setString(
      "userName",
      namecontroller.text.toString(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Form(
              key: _globalkey,
              child: Column(
                children: [
                  SizedBox(
                    height: 40.0,
                  ),
                  CustomTextField(
                    textcontroller: namecontroller,
                    hintText: "Enter your Name",
                    icon: Icons.people,
                    isObsecure: false,
                    labelText: "Name",
                  ),
                  CustomTextField(
                    textcontroller: emailcontroller,
                    labelText: "Email",
                    hintText: "Enter your email",
                    icon: Icons.mail,
                    isObsecure: false,
                  ),
                  CustomTextField(
                    textcontroller: passwordcontroller,
                    labelText: "Password",
                    hintText: "Enter your Password",
                    icon: Icons.lock,
                    isObsecure: true,
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      validate();
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.height * 0.4,
                      child: Center(
                        child: Text(
                          "Register",
                          style: TextStyle(
                            fontSize: 24.0,
                            fontFamily: "Lobster",
                            //letterSpacing: 1.0
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
