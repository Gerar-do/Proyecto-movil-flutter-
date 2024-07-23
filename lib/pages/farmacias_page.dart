import 'package:flutter/material.dart';

class FarmaciasPage extends StatelessWidget {
  const FarmaciasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text('Farmacias y sus promociones',
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontFamily: 'Montserrat',
        ),),
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
              'Título de la Promoción',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Este es el contenido de la promoción. Aquí puedes escribir el contenido detallado de tu promoción.',
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                onPressed: () {
                  // Acción al presionar el botón
                  print('Contacto realizado');
                },
                child: const Text('Contactar',
                style: TextStyle(
                  color: Colors.white,
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
