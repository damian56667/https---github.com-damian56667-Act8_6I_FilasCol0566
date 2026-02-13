import 'package:flutter/material.dart';

void main() => runApp(const AppPerfumeria());

class AppPerfumeria extends StatelessWidget {
  const AppPerfumeria({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Perfumería Damian',
      home: ProductoFilaColumna(),
    );
  }
}

class ProductoFilaColumna extends StatelessWidget {
  const ProductoFilaColumna({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Título de la tienda
        title: const Text(
          'Perfumería Damian',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: false, // Lo moví a la izquierda para dar espacio a los iconos
        backgroundColor: Colors.blue,
        
        // --- ICONOS EN LA BARRA AZUL (AppBar) ---
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {}, // Icono de lupa para buscar
          ),
          IconButton(
            icon: const Icon(Icons.opacity, color: Colors.white),
            onPressed: () {}, // Icono de gota (esencia)
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {}, // Icono de carrito de compras
          ),
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {}, // Menú de tres puntos
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Primera Fila
            Expanded(
              child: Row(
                children: [
                  _crearContenedor(Colors.orange, Icons.local_florist, "Floral"),
                  const SizedBox(width: 8),
                  _crearContenedor(Colors.orangeAccent, Icons.wb_sunny, "Cítrico"),
                ],
              ),
            ),
            const SizedBox(height: 8),
            // Segunda Fila
            Expanded(
              child: Row(
                children: [
                  _crearContenedor(Colors.purple, Icons.nightlight, "Noche"),
                  const SizedBox(width: 8),
                  _crearContenedor(Colors.green, Icons.eco, "Natural"),
                ],
              ),
            ),
            const SizedBox(height: 8),
            // Tercera Fila
            Expanded(
              child: Row(
                children: [
                  _crearContenedor(Colors.blue, Icons.water_drop, "Fresco"),
                  const SizedBox(width: 8),
                  _crearContenedor(Colors.red, Icons.favorite, "Premium"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearContenedor(Color color, IconData icono, String texto) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icono, size: 50, color: Colors.white),
            const SizedBox(height: 10),
            Text(
              texto,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}