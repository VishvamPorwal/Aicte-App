// ignore_for_file: prefer_const_constructors

import 'package:aicte_app/pages/bulletins.dart';
import 'package:aicte_app/pages/gallery.dart';
import 'package:aicte_app/pages/institutes.dart';
import 'package:aicte_app/pages/web.dart';
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
      backgroundColor: Colors.yellow,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: null,
            decoration: BoxDecoration(
                color: Colors.yellow,
                image: DecorationImage(
                    image: AssetImage('assets/aicte_logo.png'),
                    fit: BoxFit.cover)),
          ),
          SizedBox(height: 10,),
          ListTile(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(0))),
            tileColor: Colors.orange[400],
            leading: Icon(Icons.home, size: 35,color: Colors.black,),
            title: Text('Home', style : TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          SizedBox(height: 10,),
          ListTile(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      bottomLeft: Radius.circular(30))),
            tileColor: Colors.orange[400],
            leading: Icon(Icons.auto_graph_outlined, size: 35,color: Colors.black,),
            title: Text('Statistics', style : TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => StatisticsPage()));
            },
          ),
          SizedBox(height: 10,),
          ListTile(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.only(
                       topLeft: Radius.circular(0),
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(0))),
            tileColor: Colors.orange[400],
            leading: Icon(Icons.school, size: 35,color: Colors.black,),
            title: Text('Institutions', style : TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InstitutesPage()));
            },
          ),
          SizedBox(height: 10,),
          ListTile(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      bottomLeft: Radius.circular(30))),
            tileColor: Colors.orange[400],
            leading: Icon(Icons.note_alt_rounded, size: 35,color: Colors.black,),
            title: Text('Bulletins', style : TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BulletinsPage()));
            },
          ),
          SizedBox(height: 10,),
          ListTile(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.only(
                       topLeft: Radius.circular(0),
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(0))),
            tileColor: Colors.orange[400],
            leading: Icon(Icons.perm_media, size: 35,color: Colors.black,),
            title: Text('Gallery', style : TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GalleryPage()));
            },
          ),
          SizedBox(height: 10,),
          ListTile(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      bottomLeft: Radius.circular(30))),
            tileColor: Colors.orange[400],
            leading: Icon(Icons.history_edu_rounded, size: 35,color: Colors.black,),
            title: Text('About Us', style : TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WebViewRendererUtil(
                          "https://www.aicte-india.org/about-us/history",
                          "About Us")
                  )
              );
            },
          ),
        ],
      ),
    );
  }
}
