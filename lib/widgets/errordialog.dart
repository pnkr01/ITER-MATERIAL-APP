import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ErrorDialog extends StatelessWidget {
  String? message;
  ErrorDialog({this.message});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      key: key,
      content: Text(message!),
      actions: [
        ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: Text("Ok"),
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
          ),
        ),
      ],
    );
  }
}
