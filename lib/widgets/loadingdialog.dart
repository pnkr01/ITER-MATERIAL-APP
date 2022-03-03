import 'package:flutter/material.dart';
// ignore: must_be_immutable
class LoadingDialog extends StatelessWidget {
  String? message;
  LoadingDialog({this.message});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      key: key,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircularProgressIndicator(),
          SizedBox(height: 15.0),
          Text(message!),
        ],
      ),
    );
  }
}
