import 'package:flutter/material.dart';

class FarmaciasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text('Farmacias y sus promociones',
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontFamily: 'Montserrat',
        ),),
      ),
      body: ListView.builder(
        itemCount: 10, // Número de promociones, puedes cambiarlo según necesites
        itemBuilder: (context, index) {
          return PromotionCard();
        },
      ),
    );
  }
}

class PromotionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(25),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Título de la Promoción',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Este es el contenido de la promoción. Aquí puedes escribir el contenido detallado de tu promoción.',
            ),
            SizedBox(height: 10),
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
                child: Text('Contactar',
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
