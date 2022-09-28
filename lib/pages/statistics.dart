import 'package:aicte_app/utils/web_view_renderer.dart';
import 'package:flutter/material.dart';

import '../utils/drawer.dart';

class StatisticsPage extends StatefulWidget {
  StatisticsPage({Key? key}) : super(key: key);

  @override
  State<StatisticsPage> createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
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
          children:[
            InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => WebViewRendererUtil("https://facilities.aicte-india.org/dashboard/pages/dashboardaicte.php", "Statistics Dashboard")));
            }, child: Card(child: Center(child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("Dashboard"),
            )))),
            InkWell(onTap: (){
              Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WebViewRendererUtil(
                                "https://facilities.aicte-india.org/dashboard/pages/angulardashboard.php#!/graphs",
                                "Statistics Graphs and Charts")));

            }, child: Card(child: Center(child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("Graphs and Charts"),
            )))),
          ]
        ),
      ),
    );
  }
}

