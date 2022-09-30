import 'package:flutter/material.dart';

import '../utils/drawer.dart';
import '../utils/web_view_renderer.dart';

class BulletinsPage extends StatefulWidget {
  BulletinsPage({Key? key}) : super(key: key);

  @override
  State<BulletinsPage> createState() => _BulletinsPageState();
}

class _BulletinsPageState extends State<BulletinsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
        AppBar(
          title: const Text('Bulletin',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
        ),
      drawer: MyDrawer(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(
            MediaQuery.of(context).size.width / 4,
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WebViewRendererUtil(
                                  "https://www.aicte-india.org/bulletins/circulars",
                                  "Circular")));
                    },
                    child: Card(
                      elevation: 20,
                      shape: StadiumBorder(
                      side: BorderSide(
                        color: Colors.black,
                        width: 4.0,
                      ),),
                      color: Colors.yellow[400],
                        child: Center(
                            child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text("Circular",style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),),
                    )))),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WebViewRendererUtil(
                                  "https://www.aicte-india.org/bulletins/newsletter?lang=All",
                                  "Newsletter")));
                    },
                    child: Card(
                      elevation: 20,
                      shape: StadiumBorder(
                      side: BorderSide(
                        color: Colors.black,
                        width: 4.0,
                      ),),
                      color: Colors.yellow[400],
                        child: Center(
                            child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text("Newsletter",style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),),
                    )))),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WebViewRendererUtil(
                                  "https://www.aicte-india.org/bulletins/annoucement",
                                  "Announcements")));
                    },
                    child: Card(
                      elevation: 20,
                      shape: StadiumBorder(
                      side: BorderSide(
                        color: Colors.black,
                        width: 4.0,
                      ),),
                      color:Colors.yellow[400],
                        child: Center(
                            child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text("Announcements",style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),),
                    )))),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WebViewRendererUtil(
                                  "https://www.aicte-india.org/press-releases",
                                  "Press Release")));
                    },
                    child: Card(
                      elevation: 20,
                      shape: StadiumBorder(
                      side: BorderSide(
                        color: Colors.black,
                        width: 4.0,
                      ),),
                      color : Colors.yellow[400],
                        child: Center(
                            child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text("Press Release",style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),),
                    )))),
                    
              ]),
        ),
      ),
    );
  }
}