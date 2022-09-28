import 'package:flutter/material.dart';

import '../utils/drawer.dart';
import '../utils/web_view_renderer.dart';


class GalleryPage extends StatefulWidget {
  GalleryPage({Key? key}) : super(key: key);

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AICTE"),
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
                                "https://www.aicte-india.org/picture-gallery",
                                "Image Gallery")));
                  },
                  child: Card(
                      child: Center(
                          child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Image Gallery"),
                  )))),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WebViewRendererUtil(
                                "https://www.aicte-india.org/news-video",
                                "Video Gallery")));
                  },
                  child: Card(
                      child: Center(
                          child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Video Gallery"),
                  )))),
              
            ]),
      ),
    );
  }
}