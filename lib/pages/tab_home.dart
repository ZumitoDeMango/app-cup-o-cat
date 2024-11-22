import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class TabHome extends StatefulWidget {
  const TabHome({super.key});

  @override
  State<TabHome> createState() => _TabHomeState();
}

class _TabHomeState extends State<TabHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(
              Icons.coffee,
              color: Colors.white,
            ),
            SizedBox(width: 8), 
            Text(
              'Bienvenid@ a Cup o\' Cat',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        foregroundColor: Color(0xFFFFFFFF),
        backgroundColor: Color(0xFF523a34),
        actions: [
          IconButton(
            icon: const Icon(Icons.location_on),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              items: [
                // aqui van las fotos del carrusel
              ],
              options: CarouselOptions(
                height: 200,
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Nuestros Productos',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(16),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: /* snapshot.data.length */8,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 200,
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemBuilder: (context, index) {
                  /* var producto = snapshot.data[index]; */
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      color: Color(0xFFF5F5DC), 
                      child: Stack(children: [
                        Positioned(
                          right: 1,
                          top: 1,
                          child: IconButton(
                            icon: Icon(Icons.favorite_outline), 
                            onPressed: () {},
                          ),
                        ),
                        Positioned(
                          right: 1,
                          left: 1,
                          top: 40,
                          child: Column(
                            children: [
                              Container(
                                height: 100,
                                color: Colors.black,
                              ),
                              Text('nombre'),
                              Text('precio'),
                            ],
                          ),
                        ),
                      ]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}