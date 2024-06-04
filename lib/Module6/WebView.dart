import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class web_view extends StatefulWidget {
  @override
  State<web_view> createState() => _web_viewState();
}

class _web_viewState extends State<web_view>
{
late WebViewController controller;
@override
  void initState() {
    super.initState();
    controller = WebViewController(
    )
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..setBackgroundColor(const Color(0x00000000))
  ..setNavigationDelegate(
    NavigationDelegate(
      onProgress: (int progress) {
        // Update loading bar.
      },
      onPageStarted: (String url) {},
      onPageFinished: (String url) {},
      onWebResourceError: (WebResourceError error) {},

    ),
  )
  ..loadRequest(Uri.parse('https://flutter.dev'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(
        controller: controller,
      )
    );
  }
}