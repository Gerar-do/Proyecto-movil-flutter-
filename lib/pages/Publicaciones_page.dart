import 'package:flutter/material.dart';

class PublicacionesPage extends StatefulWidget {
  const PublicacionesPage({super.key});

  @override
  State<PublicacionesPage> createState() => _PublicacionesPageState();
}

class _PublicacionesPageState extends State<PublicacionesPage> {
  void _verPerfil(BuildContext context, String publicacion) {
    Navigator.pushNamed(
      context,
      '/perfil',
      arguments: publicacion, // Pasa el nombre de la publicación como argumento
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          'Publicaciones',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Montserrat',
            fontSize: 16,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(25),
        children: <Widget>[
          Card(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Publicación 1',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 5),
                  const Text('Descripción de la publicación 1.'),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () => _verPerfil(context, 'Publicación 1'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[800], // Color de fondo del botón
                      ),
                      child: const Text(
                        'Ver Perfil',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Publicación 2',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 5),
                  const Text('Descripción de la publicación 2.'),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () => _verPerfil(context, 'Publicación 2'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[800], // Color de fondo del botón
                      ),
                      child: const Text(
                        'Ver Perfil',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Publicación 3',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 5),
                  const Text('Descripción de la publicación 3.'),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () => _verPerfil(context, 'Publicación 3'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[800], // Color de fondo del botón
                      ),
                      child: const Text(
                        'Ver Perfil',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Agrega más publicaciones según sea necesario
        ],
      ),
    );
  }
}
