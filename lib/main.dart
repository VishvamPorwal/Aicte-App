import 'dart:async';
import 'dart:io';
import 'package:google_fonts/google_fonts.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:aicte_app/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aicte',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        textTheme: GoogleFonts.poppinsTextTheme(
      Theme.of(context).textTheme,
      ),
      ),
      home: SplashScreenPage(),
    );
  }
}
class SplashScreenPage extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    
    return Center(
      child: SplashScreen(  
        seconds: 4,  
        navigateAfterSeconds: new HomePage(),  
        backgroundColor: Colors.white,   
        image: new Image.asset(  
            'assets/aicte_logo.png'  
        ),  
        loadingText: Text("Loading"),  
        photoSize: 200.0,  
        loaderColor: Colors.black,  
      ),
    );  
  }  
}  

