import 'package:aicte_app/pages/statistics.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AICTE'),
      ),
      body: Column(
        children: [
          Flexible(child: Container(
            height: MediaQuery.of(context).size.height/4,
            width: MediaQuery.of(context).size.width/4,
            child: Icon(Icons.home),
          )),
          Flexible(child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10), children: [
            InkWell(
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(child: Container(
                      child: Icon(Icons.home),
                    )),
                    Text("Statistics"),
                  ],
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => StatisticsPage()));
              }, // TODO: Add Statistics Page
            ),
            InkWell(
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                          child: Container(
                        child: Icon(Icons.home),
                      )),
                      Text("Institutions"),
                    ],
                  ),
                ),
                onTap: () {}, // TODO: Add Statistics Page
              ),
            InkWell(
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                          child: Container(
                        child: Icon(Icons.home),
                      )),
                      Text("Bulletins"),
                    ],
                  ),
                ),
                onTap: () {}, // TODO: Add Statistics Page
              ),
            InkWell(
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                          child: Container(
                        child: Icon(Icons.home),
                      )),
                      Text("Gallery"),
                    ],
                  ),
                ),
                onTap: () {}, // TODO: Add Statistics Page
              ),
          ],))
        ],
      ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        
      },
      child: const Icon(Icons.chat),
      backgroundColor: Colors.blue,
    ),
    
    );
  }
}