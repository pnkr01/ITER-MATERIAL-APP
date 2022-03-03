import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomUiContainer extends StatefulWidget {
  String? title;
  CustomUiContainer({this.title});
  @override
  _CustomUiContainerState createState() => _CustomUiContainerState();
}

class _CustomUiContainerState extends State<CustomUiContainer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        color: Colors.blue,
        height: 50,
        width: 50,
        child: Center(
          child: Text(
            widget.title!
          ),
        ),
      ),
    );
  }
}
