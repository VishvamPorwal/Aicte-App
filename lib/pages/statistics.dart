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
        title: const Text('Statistics',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
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
            children:[
              InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => WebViewRendererUtil("https://facilities.aicte-india.org/dashboard/pages/dashboardaicte.php", "Statistics Dashboard")));
                }, child: Card(
                  elevation: 20,
                        shape: StadiumBorder(
                        side: BorderSide(
                          color: Colors.black,
                          width: 4.0,
                        ),),
                  color: Colors.yellow[400],
                  child: Center(child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Dashboard",style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),),
              
                ))),
              ),
              InkWell(onTap: (){
                Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WebViewRendererUtil(
                                  "https://facilities.aicte-india.org/dashboard/pages/angulardashboard.php#!/graphs",
                                  "Statistics Graphs and Charts")));

              }, child: Card(
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
                child: Text("Graphs and Charts", style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),),
              ))),
              ),
            ]
          ),
        ),
      ),
    );
  }
}

