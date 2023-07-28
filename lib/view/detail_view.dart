import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DetailViewScreen extends StatefulWidget {
  String newsUrl;
  DetailViewScreen({super.key, required this.newsUrl});

  @override
  State<DetailViewScreen> createState() => _DetailViewScreenState();
}

class _DetailViewScreenState extends State<DetailViewScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {
      if (widget.newsUrl.contains("http:")) {
        widget.newsUrl = widget.newsUrl.replaceAll("http:", "https:");
      } else {
        widget.newsUrl = widget.newsUrl;
      }
    });
    
  }

  final Completer<WebViewController> controller =
              Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("News Flash"),),
        body: WebView(
          initialUrl: widget.newsUrl,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController){
          setState(() {
            controller.complete(webViewController);
          });
          },
        ),
    );
  }
}

