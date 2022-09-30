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
        title: const Text('Institutes',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
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
                                  "https://facilities.aicte-india.org/dashboard/pages/aicte_nba.php",
                                  "Approved Institutes")));
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
                      child: Text("Approved Institutes",style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),),
                    )))),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WebViewRendererUtil(
                                  "https://facilities.aicte-india.org/dashboard/pages/aicte_autonomus.php",
                                  "Autonomous Institutes")));
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
                      child: Center(child: Text("Autonomous Inst.", style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),)),
                    )))),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WebViewRendererUtil(
                                  "https://facilities.aicte-india.org/dashboard/pages/angulardashboard.php#!/closedinstitute",
                                  "Closed Institutes")));
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
                      child: Text("Closed Institutes",style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),),
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
                      child: Text("Closed Courses",style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),),
                    )))),
              ]),
        ),
      ),
    );
  }
}
