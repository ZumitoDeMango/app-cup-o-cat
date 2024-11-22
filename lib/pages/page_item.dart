import 'package:flutter/material.dart';

class PageItem extends StatefulWidget {
  const PageItem({super.key});

  @override
  State<PageItem> createState() => _PageItemState();
}

class _PageItemState extends State<PageItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {
              // Acción al presionar el icono de favorito
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/cappuccino.jpg', // Reemplaza con tu imagen
                  width: 300,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Cappuccino',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  '\$2500',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Descripción',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              'Es una bebida de café italiana que consiste en una parte de espresso, una parte de leche caliente, y una parte de espuma de leche.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}