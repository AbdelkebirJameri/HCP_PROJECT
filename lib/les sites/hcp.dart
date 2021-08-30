import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HCPsite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "Haut Commissariat Au Plan",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: WebView(
          initialUrl: "http://www.hcp.ma",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}