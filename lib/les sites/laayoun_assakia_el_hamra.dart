import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Laayounsite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "Laayoun Assakia El Hamra",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: WebView(
          initialUrl: "http://m.youtube.com",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}