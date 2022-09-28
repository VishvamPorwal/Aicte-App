import 'dart:async';
import 'dart:io';

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
          Scaffold.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
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
              _webViewController = webViewController;
              _controller.complete(webViewController);
            },
            onPageFinished: (String url) {
              print('Page finished loading: $url');

              // Removes header and footer from page
              _webViewController
                  .runJavascriptReturningResult("javascript:(function() { " +
                      "var head = document.querySelector('body > div.w3-top');" +
                      "head.parentNode.removeChild(head);" +
                      "var footer = document.getElementsByTagName('footer')[0];" +
                      "footer.parentNode.removeChild(footer);" +
                      "})()")
                  .then(
                      (value) => debugPrint('Page finished loading Javascript'))
                  .catchError((onError) => debugPrint('$onError'));
            },
          ))
        ]));
  }
}
