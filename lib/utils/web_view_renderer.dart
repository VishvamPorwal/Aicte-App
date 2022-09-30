import 'dart:async';
import 'dart:io';

import 'package:aicte_app/utils/drawer.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewRendererUtil extends StatefulWidget {
  final String url;
  final String title;

  WebViewRendererUtil(this.url, this.title);

  @override
  WebViewRendererUtilState createState() =>
      WebViewRendererUtilState(this.url, this.title);
}

class WebViewRendererUtilState
    extends State<WebViewRendererUtil> {
  final String url;
  final String title;
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  WebViewRendererUtilState(this.url, this.title);

  late WebViewController _webViewController;

  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
    return JavascriptChannel(
        name: 'Toaster',
        onMessageReceived: (JavascriptMessage message) {
          // ignore: deprecated_member_use
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        ),
        body: Column(children: [
          Expanded(
              child: WebView(
            initialUrl: this.url,
            javascriptMode: JavascriptMode.unrestricted,
            javascriptChannels: <JavascriptChannel>{
              _toasterJavascriptChannel(context),
            },
            onWebViewCreated: (WebViewController webViewController) {
              setState((){
                _webViewController = webViewController;
                _controller.complete(webViewController);
              });
              
            },
            
            onPageFinished: (url){
          _webViewController.runJavascript(
            "document.getElementsByClassName('container-fluid topPan')[0].style.display='none'"
          );
          _webViewController.runJavascript(
            "document.getElementsByClassName('w3-bar w3-text-white w3-padding w3-small')[0].style.display='none'"
          );
          _webViewController.runJavascript(
            "document.getElementsByClassName('off-canvas-toggle navbar-canvas-toggle icon-toggle hidden-lg clearfix')[0].style.display='none'"
          );
          
          _webViewController.runJavascript(
            "document.getElementsByClassName('socials-list-footer')[0].style.display='none'"
          );
           _webViewController.runJavascript(
            "document.getElementsByClassName('pull-left')[0].style.display='none'"
          );
          _webViewController.runJavascript(
            "document.getElementsByClassName('logo')[0].style.display='none'"
          );
          _webViewController.runJavascript(
            "document.getElementsByClassName('region region-footer')[0].style.display='none'"
          );
          _webViewController.runJavascript(
            "document.getElementsByClassName('breadcrumb')[0].style.display='none'"
          );
         _webViewController.runJavascript(
            "document.getElementsByClassName('col-md-4 col-sm-4 col-xs-12 Search')[0].style.display='none'"
          );
          _webViewController.runJavascript(
            "document.getElementsByClassName('oda-chat-wrapper oda-chat-collapsed')[0].style.display='none'"
          );
          _webViewController.runJavascript(
            "document.getElementsByClassName('w3-bar w3-light-gray w3-border-top w3-padding')[0].style.display='none'"
          );
          
        },
          ))
        ]));
  }
}
