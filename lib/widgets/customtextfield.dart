import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  TextEditingController? textcontroller;
  IconData? icon;
  String? hintText;
  bool? isObsecure;
  String? labelText;
  CustomTextField(
      {this.icon,
      this.hintText,
      this.isObsecure,
      this.labelText,
      this.textcontroller});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(5.0),
        ),
      ),
      child: TextFormField(
        controller: textcontroller,
        obscureText: isObsecure!,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.brown, fontSize: 18.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
          ),
          hintText: hintText,
          fillColor: Colors.white,
          focusColor: Theme.of(context).primaryColor,
          prefixIcon: Icon(
            icon,
            color: Colors.pink.shade200,
          ),
        ),
      ),
    );
  }
}
