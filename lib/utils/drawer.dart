import 'package:aicte_app/pages/bulletins.dart';
import 'package:aicte_app/pages/gallery.dart';
import 'package:aicte_app/pages/institutes.dart';
import 'package:aicte_app/utils/web_view_renderer.dart';
import 'package:flutter/material.dart';

import '../pages/home.dart';
import '../pages/statistics.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Text('AICTE'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Statistics'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => StatisticsPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Institutions'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => InstitutesPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Bulletins'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BulletinsPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Gallery'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GalleryPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('About Us'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WebViewRendererUtil(
                          "https://www.aicte-india.org/about-us/history",
                          "About Us")));
            },
          ),
        ],
      ),
    );
  }
}
