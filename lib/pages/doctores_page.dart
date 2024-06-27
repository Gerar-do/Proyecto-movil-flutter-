import 'package:flutter/material.dart';

class DoctoresPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        title: Text('Doctores', style: TextStyle(
          color: Colors.white,
          fontFamily: 'Montserrat',
          fontSize: 12,
        ),),
      ),
      body: ListView.builder(
        itemCount: 10, // Número de publicaciones, puedes cambiarlo según necesites
        itemBuilder: (context, index) {
          return PostCard();
        },
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(27),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nomnre del doctor ',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Este es el contenido de la publicación. Aquí puedes escribir el contenido detallado de tu publicación.',
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
                  print('Cita realizada');
                },
                child: Text('Hacer Cita',
                style: TextStyle(
                  color: Colors.white,
                ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
