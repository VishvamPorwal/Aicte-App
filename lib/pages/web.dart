import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

import '../pages/home.dart';
import '../pages/statistics.dart';

class Web extends StatefulWidget {
  const Web({
    Key? key,
  }) : super(key: key);

  @override
  State<Web> createState() => _WebState();
}

class _WebState extends State<Web> {
late WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:WebView(
        initialUrl: 'https://www.aicte-india.org/about-us/history',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (controller){
          this.controller = controller;
          
          
        },
        onPageStarted: (url){
          controller.runJavascript(
            "document.getElementsByClassName('container-fluid topPan')[0].style.display='none'"
          );
          
          controller.runJavascript(
            "document.getElementsByClassName('logo')[0].style.display='none'"
          );
          controller.runJavascript(
            "document.getElementsByClassName('breadcrumb')[0].style.display='none'"
          );
          controller.runJavascript(
            "document.getElementsByClassName('col-md-4 col-sm-4 col-xs-12 Search')[0].style.display='none'"
          );
         
          controller.runJavascript(
            "document.getElementsByClassName('oda-chat-button-icon')[0].style.display='none'"
          );
          controller.runJavascript(
            "document.getElementsByClassName('fa fa-bars')[0].style.display='none'"
          );
        },
        onPageFinished: (url){
          controller.runJavascript(
            "document.getElementsByClassName('container-fluid topPan')[0].style.display='none'"
          );
        
          controller.runJavascript(
            "document.getElementsByClassName('logo')[0].style.display='none'"
          );
          controller.runJavascript(
            "document.getElementsByClassName('breadcrumb')[0].style.display='none'"
          );
         controller.runJavascript(
            "document.getElementsByClassName('col-md-4 col-sm-4 col-xs-12 Search')[0].style.display='none'"
          );
          controller.runJavascript(
            "document.getElementsByClassName('oda-chat-button-icon')[0].style.display='none'"
          );
          controller.runJavascript(
            "document.getElementsByClassName('fa fa-bars')[0].style.display='none'"
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()async{
        controller.loadUrl('https://www.aicte-india.org/about-us/history');
        controller.runJavascript(
            "document.getElementsByClassName('container-fluid topPan')[0].style.display='none'"
          );
          controller.runJavascript(
            "document.getElementsByClassName('container')[0].style.display='none'"
          );
          controller.runJavascript(
            "document.getElementsByClassName('content')[0].style.display='none'"
          );
          controller.runJavascript(
            "document.getElementsById('logo')[0].style.display='none'"
          );
          controller.runJavascript(
            "document.getElementsByClassName('edit-search-block-form--2').value='ewdde'"
          );
          controller.runJavascript(
            "document.getElementsByClassName('oda-chat-button-icon')[0].style.display='none'"
          );
          controller.runJavascript(
            "document.getElementsByClass('fa fa-bars')[0].style.display='none'"
          );

      }),
    );
  }
}
