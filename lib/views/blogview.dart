import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'error.dart';

class BlogView extends StatefulWidget {
  final String? blogUrl;
  final String? title;
  BlogView({this.blogUrl, this.title});

  @override
  _BlogViewState createState() => _BlogViewState();
}

class _BlogViewState extends State<BlogView> {
  bool spinner = true;
  @override
  Widget build(BuildContext context) {
    print(widget.blogUrl);
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.brown,
        backgroundColor: Color(0xff943176),
        title: Text(
          widget.title!,
          style: TextStyle(
            fontFamily: "Signatra",
            fontSize: 45.0,
          ),
          ),
        actions: [
          Opacity(
            opacity: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.safety_divider),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            child: Sizer(
              builder: (BuildContext context, Orientation orientation,
                  DeviceType deviceType) {
                return WebView(
                  allowsInlineMediaPlayback: true,
                  onWebResourceError: (weberror) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ErrorScreen(),
                      ),
                    );
                  },
                  onPageFinished: (url) {
                    setState(() {
                      spinner = false;
                    });
                  },
                  gestureNavigationEnabled: true,
                  javascriptMode: JavascriptMode.unrestricted,
                  initialUrl: widget.blogUrl,
                );
              },
            ),
          ),
          spinner
              ? Center(
                  child: CircularProgressIndicator(
                    color: Colors.deepOrange,
                  ),
                )
              : Stack(),
        ],
      ),
    );
  }
}
