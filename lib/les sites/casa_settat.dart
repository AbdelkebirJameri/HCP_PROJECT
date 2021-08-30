import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Casasite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "Casa Setttat",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: WebView(
          initialUrl: "http://github.com",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}