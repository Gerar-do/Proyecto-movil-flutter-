import 'package:flutter/material.dart';

class EspecialistaPage extends StatelessWidget {
  const EspecialistaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          'Especialistas',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontFamily: 'Montserrat',
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 10, // Número de promociones, puedes cambiarlo según necesites
        itemBuilder: (context, index) {
          return const PromotionCard();
        },
      ),
    );
  }
}

class PromotionCard extends StatelessWidget {
  const PromotionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(25),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Nombre del especialista',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Este es el contenido de la promoción. Aquí puedes escribir el contenido detallado del especialista.',
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[600],
                  ),
                  onPressed: () {
                    // Acción al presionar el botón
                    print('Contacto realizado');
                  },
                  child: const Text(
                    'Contactar',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent[100],
                  ),
                  onPressed: () {
                    // Acción al presionar el botón
                    print('Ver perfil');

                  },
                  child: const Text(
                    'Perfil',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
