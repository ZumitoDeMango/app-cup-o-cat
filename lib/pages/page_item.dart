// import 'package:flutter/material.dart';

// class PageItem extends StatefulWidget {
//   const PageItem({super.key, required List<int> favoriteProducts});

//   @override
//   State<PageItem> createState() => _PageItemState();
// }

// class _PageItemState extends State<PageItem> {
//   // Lista para almacenar los productos favoritos
//   List<int> favoriteProducts = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Row(
//           children: [
//             Icon(
//               Icons.coffee,
//               color: Colors.white,
//             ),
//             SizedBox(width: 8),
//             Text(
//               'Bienvenid@ a Cup o\' Cat',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//         foregroundColor: Color(0xFFFFFFFF),
//         backgroundColor: Color(0xFF523a34),
//         actions: [
//           // Botón para navegar a la pantalla de favoritos
//           IconButton(
//             icon: const Icon(Icons.favorite),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => PageItem(favoriteProducts: favoriteProducts),
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             // Aquí va tu GridView de productos
//             // Este ejemplo muestra 8 productos como en tu código original
//             GridView.builder(
//               physics: NeverScrollableScrollPhysics(),
//               shrinkWrap: true,
//               itemCount: 8, // Cambia la cantidad de elementos según sea necesario
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 mainAxisExtent: 200,
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 8,
//                 mainAxisSpacing: 8,
//               ),
//               itemBuilder: (context, index) {
//                 return ClipRRect(
//                   borderRadius: BorderRadius.circular(16),
//                   child: Container(
//                     color: Color(0xFFF5F5DC),
//                     child: Stack(
//                       children: [
//                         Positioned.fill(
//                           child: Image.asset(
//                             'assets/tipos-de-cafe-wide_webp.jpg',  // Asegúrate de tener imágenes en tu carpeta de assets
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         Positioned(
//                           left: 8,
//                           bottom: 8,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'Cafe $index',
//                                 style: TextStyle(
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                               SizedBox(height: 4),
//                               Text(
//                                 '\$ Precio $index',
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         // Ícono de favorito
//                         Positioned(
//                           right: 8,
//                           top: 8,
//                           child: IconButton(
//                             icon: Icon(
//                               favoriteProducts.contains(index)
//                                   ? Icons.favorite
//                                   : Icons.favorite_outline,
//                             ),
//                             onPressed: () {
//                               setState(() {
//                                 if (favoriteProducts.contains(index)) {
//                                   favoriteProducts.remove(index);
//                                 } else {
//                                   favoriteProducts.add(index);
//                                 }
//                               });
//                             },
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
