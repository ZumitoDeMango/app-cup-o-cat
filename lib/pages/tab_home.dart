import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class TabHome extends StatefulWidget {
  const TabHome({super.key});

  @override
  State<TabHome> createState() => _TabHomeState();
}

class _TabHomeState extends State<TabHome> {
  // Lista de productos para mostrar
  final List<Map<String, dynamic>> products = [
    {'name': 'Cafe 1', 'imageUrl': 'assets/tipos-de-cafe-wide_webp.jpg', 'price': 5.0},
    {'name': 'Cafe 2', 'imageUrl': 'assets/tipos-de-cafe-wide_webp.jpg', 'price': 6.0},
    {'name': 'Cafe 3', 'imageUrl': 'assets/tipos-de-cafe-wide_webp.jpg', 'price': 7.0},
    {'name': 'Cafe 4', 'imageUrl': 'assets/tipos-de-cafe-wide_webp.jpg', 'price': 8.0},
    // Agrega más productos si es necesario
  ];

  // Lista para almacenar los índices de los productos favoritos
  List<int> favoriteProducts = [];

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
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
          // Icono para navegar a la pantalla de favoritos
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FavoritesScreen(
                    favoriteProducts: favoriteProducts,
                    products: products,
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Carrusel de imágenes
            CarouselSlider(
              items: [
                Image.asset('assets/cafe-suave-variedades-gourmet_11133.jpg'),
                Image.asset('assets/cafe-suave-variedades-gourmet_11133.jpg'),
                Image.asset('assets/cafe-suave-variedades-gourmet_11133.jpg'),
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

            // GridView para mostrar los productos
            Padding(
              padding: const EdgeInsets.all(16),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 200,  // Altura de cada tarjeta
                  crossAxisCount: 2,    // Número de columnas
                  crossAxisSpacing: 8,  // Espacio entre columnas
                  mainAxisSpacing: 8,   // Espacio entre filas
                ),
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      color: Color(0xFFF5F5DC),  // Fondo de la tarjeta
                      child: Stack(
                        children: [
                          // Imagen de fondo
                          Positioned.fill(
                            child: Image.asset(
                              products[index]['imageUrl'],  // Usamos el índice para obtener la imagen
                              fit: BoxFit.cover,  // La imagen cubrirá toda la tarjeta
                            ),
                          ),
                          // Contenido encima de la imagen
                          Positioned(
                            left: 8,
                            bottom: 8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  products[index]['name'], // Usamos el índice para obtener el nombre
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,  // Color del texto
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  '\$ ${products[index]['price']} ',  // Usamos el índice para obtener el precio
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,  // Color del texto
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Ícono de favorito en la esquina superior derecha
                          Positioned(
                            right: 8,
                            top: 8,
                            child: IconButton(
                              icon: Icon(
                                favoriteProducts.contains(index)
                                    ? Icons.favorite
                                    : Icons.favorite_outline,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (favoriteProducts.contains(index)) {
                                    favoriteProducts.remove(index);
                                  } else {
                                    favoriteProducts.add(index);
                                  }
                                });
                              },
                            ),
                          ),
                        ],
                      ),
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

// Pantalla de favoritos
class FavoritesScreen extends StatelessWidget {
  final List<int> favoriteProducts;
  final List<Map<String, dynamic>> products;

  const FavoritesScreen({super.key, required this.favoriteProducts, required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos Favoritos'),
        backgroundColor: Color(0xFF523a34),
      ),
      body: ListView.builder(
        itemCount: favoriteProducts.length,
        itemBuilder: (context, index) {
          final productIndex = favoriteProducts[index];
          return ListTile(
            leading: Image.asset(products[productIndex]['imageUrl'], width: 50, height: 50, fit: BoxFit.cover),
            title: Text(products[productIndex]['name']),
            subtitle: Text('\$ ${products[productIndex]['price']}'),
            trailing: Icon(Icons.favorite, color: Colors.red),
          );
        },
      ),
    );
  }
}
