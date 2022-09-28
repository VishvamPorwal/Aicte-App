import 'package:flutter/material.dart';

import '../utils/drawer.dart';
import '../utils/web_view_renderer.dart';

class InstitutesPage extends StatefulWidget {
  InstitutesPage({Key? key}) : super(key: key);

  @override
  State<InstitutesPage> createState() => _InstitutesPageState();
}

class _InstitutesPageState extends State<InstitutesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                                "https://facilities.aicte-india.org/dashboard/pages/aicte_nba.php",
                                "Approved Institutions")));
                  },
                  child: Card(
                      child: Center(
                          child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Approved Institutions"),
                  )))),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WebViewRendererUtil(
                                "https://facilities.aicte-india.org/dashboard/pages/aicte_autonomus.php",
                                "Autonomous Institutions")));
                  },
                  child: Card(
                      child: Center(
                          child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Autonomous Institutions"),
                  )))),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WebViewRendererUtil(
                                "https://facilities.aicte-india.org/dashboard/pages/angulardashboard.php#!/closedinstitute",
                                "Closed Institutions")));
                  },
                  child: Card(
                      child: Center(
                          child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Closed Institutions"),
                  )))),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WebViewRendererUtil(
                                "https://facilities.aicte-india.org/dashboard/pages/angulardashboard.php#!/closedcourse",
                                "Closed Courses")));
                  },
                  child: Card(
                      child: Center(
                          child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Closed Courses"),
                  )))),
            ]),
      ),
    );
  }
}
