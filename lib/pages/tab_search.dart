import 'package:flutter/material.dart';

class TabSearch extends StatefulWidget {
  const TabSearch({super.key});

  @override
  State<TabSearch> createState() => _TabSearchState();
}

class _TabSearchState extends State<TabSearch> {
  final TextEditingController searchController = TextEditingController();
  List<String> searchResults = ['Cappuccino', 'Espresso', 'Latte']; // ejemplo

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Barra de búsqueda
          Padding(
            padding: EdgeInsets.fromLTRB(16, 50, 16, 0),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: 'Buscar...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    searchController.clear();
                    setState(() {
                      searchResults = [];
                    });
                  },
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            )
          ),
          // Lista de resultados
          Expanded(
            child: ListView.builder(
              itemCount: 20, // Número de elementos en la lista
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.network(
                    'https://via.placeholder.com/150', // Reemplaza con la URL de tus imágenes
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text('Cappuccino $index'),
                  subtitle: Text('Delicious coffee'),
                  onTap: () {
                    // Acción al presionar un elemento
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}