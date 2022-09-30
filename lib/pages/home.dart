import 'package:aicte_app/pages/bulletins.dart';
import 'package:aicte_app/pages/gallery.dart';
import 'package:aicte_app/pages/institutes.dart';
import 'package:aicte_app/pages/statistics.dart';
import 'package:aicte_app/utils/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

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
        centerTitle: true,
        title: const Text('AICTE',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageSlideshow(

              /// Width of the [ImageSlideshow].
              width: double.infinity,

              /// Height of the [ImageSlideshow].
              height: 200,

              /// The page to show when first creating the [ImageSlideshow].
              initialPage: 0,


              /// The widgets to display in the [ImageSlideshow].
              /// Add the sample image file into the images folder
              children: [
                Image.asset(
                  'assets/slider1.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/slider2.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/slider3.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/slider4.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/slider5.jpeg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/slider6.jpg',
                  fit: BoxFit.cover,
                ),
              ],


              /// Auto scroll interval.
              /// Do not auto scroll with null or 0.
              autoPlayInterval: 5000,

              /// Loops back to first slide.
              isLoop: true,
          ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: Container(
            //     height: MediaQuery.of(context).size.height / 4,
            //     width: MediaQuery.of(context).size.width,
            //     child: Image.asset("assets/about_us.png", fit: BoxFit.fitHeight),
            //   ),
            // ),
            Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
              children: [
                  GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                          border: Border.all(color: Colors.black, width: 8.0),
                          borderRadius: BorderRadius.circular(18)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.asset(
                                'assets/statistics.jpeg',
                                fit: BoxFit.cover,
                                height: 120,
                                width: 120,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Statistics",
                              style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StatisticsPage()));
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                          border: Border.all(color: Colors.black, width: 8.0),
                          borderRadius: BorderRadius.circular(18)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.asset(
                                'assets/institutions.jpeg',
                                fit: BoxFit.cover,
                                height: 120,
                                width: 120,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Institutes",
                              style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InstitutesPage()));
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black, width: 8.0),
                          borderRadius: BorderRadius.circular(18)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.asset(
                                'assets/bulletins.jpeg',
                                fit: BoxFit.cover,
                                height: 120,
                                width: 120,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Bulletins",
                              style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BulletinsPage()));
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black, width: 8.0),
                          borderRadius: BorderRadius.circular(18)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/gallery.jpeg',
                                fit: BoxFit.cover,
                                height: 120,
                                width: 120,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Gallery",
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => GalleryPage()));
                    }, // TODO: Add Statistics Page
                  ),
              ],
            ),
                )),
          ],
        ),
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
