import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewApp extends StatefulWidget {
  const WebviewApp({Key? key}) : super(key: key);

  @override
  State<WebviewApp> createState() => _WebviewAppState();
}

class _WebviewAppState extends State<WebviewApp> {
  late WebViewController controller;

  @override
  void initState() {
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffe30f00),
        title: Text('OK Deal'),
        centerTitle: true,
      ),
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://www.okdealstore.in/',
        onWebViewCreated: (controller) {
          this.controller = controller;
        },
        // onPageStarted: (url) {
        //   controller.runJavascript(
        //       "document.getElementsByTagName('header')[0].style.display='none'");
        //   controller.runJavascript(
        //       "document.getElementsByTagName('footer')[0].style.display='none'");
      ),
    );
  }
}
