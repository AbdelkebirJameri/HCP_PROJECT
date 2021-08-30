import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Fessite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "Fes Meknes",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: WebView(
          initialUrl: "http://google.com",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}