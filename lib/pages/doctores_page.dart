import 'package:flutter/material.dart';

class DoctoresPage extends StatelessWidget {
  const DoctoresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        title: const Text('Doctores', style: TextStyle(
          color: Colors.white,
          fontFamily: 'Montserrat',
          fontSize: 12,
        ),),
      ),
      body: ListView.builder(
        itemCount: 10, // Número de publicaciones, puedes cambiarlo según necesites
        itemBuilder: (context, index) {
          return const PostCard();
        },
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(27),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Nombre del doctor ',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Este es el contenido de la publicación. Aquí puedes escribir el contenido detallado de tu publicación.',
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
                  print('Cita realizada');
                },
                child: const Text('Hacer Cita',
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
