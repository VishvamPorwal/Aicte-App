import 'package:aicte_app/pages/bulletins.dart';
import 'package:aicte_app/pages/gallery.dart';
import 'package:aicte_app/pages/institutes.dart';
import 'package:aicte_app/pages/statistics.dart';
import 'package:aicte_app/utils/drawer.dart';
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
      drawer: MyDrawer(),
      appBar: AppBar(
        title: const Text('AICTE'),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/4,
            width: MediaQuery.of(context).size.width/4,
            child: Icon(Icons.home),
          ),
          Flexible(child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10), children: [
            GestureDetector(
                child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.tealAccent, width: 5.0), borderRadius : BorderRadius.circular(18)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/statistics.jpeg',
                          fit: BoxFit.cover,
                          
                        ),
                        Text("Statistics")
                      ],
                    ),
                  ),
                ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => StatisticsPage()));
              }, 
            ),
            GestureDetector(
                child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.tealAccent, width: 3.0), borderRadius : BorderRadius.circular(18)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/institutions.jpeg',
                          fit: BoxFit.cover,
                          
                        ),
                        Text("Institutes")
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => InstitutesPage()));
                
                },
              ),
            GestureDetector(
                child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.tealAccent, width: 3.0), borderRadius : BorderRadius.circular(18)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/bulletins.jpeg',
                          fit: BoxFit.cover,
                          
                        ),
                        Text("Bulletin")
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BulletinsPage()));
                
                }, 
              ),
            GestureDetector(
                child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.tealAccent, width: 3.0), borderRadius : BorderRadius.circular(18)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/gallery.png',
                          fit: BoxFit.cover,
                          
                        ),
                        Text("Gallery")
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => GalleryPage()));
                
                
                }, // TODO: Add Statistics Page
              ),
          ],)),
          
        ],
      ),
    // floatingActionButton: FloatingActionButton(
    //   onPressed: () {
        
    //   },
    //   child: const Icon(Icons.chat),
    //   backgroundColor: Colors.blue,
    // ),
    
    );
  }
}