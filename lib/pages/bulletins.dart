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
          title: const Text('AICTE'),
        ),
      drawer: MyDrawer(),
      body: Padding(
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
                      child: Center(
                          child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Circular"),
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
                      child: Center(
                          child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Newsletter"),
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
                      child: Center(
                          child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Announcements"),
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
                      child: Center(
                          child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Press Release"),
                  )))),
            ]),
      ),
    );
  }
}