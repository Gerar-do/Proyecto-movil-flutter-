import 'package:demo/pages/login_page.dart';
import 'package:demo/pages/register_page.dart';
import 'package:demo/pages/home_page.dart';
import 'package:demo/pages/usuario_page.dart';
import 'package:flutter/material.dart';
import 'package:demo/pages/publicaciones_page.dart';
import 'package:demo/pages/doctores_page.dart';
import 'package:demo/pages/farmacias_page.dart';
import 'package:demo/pages/especialistas_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medican',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(),
      routes: {
        '/home': (context) => HomePage(),
        '/register': (context) => RegisterPage(),
        '/publicaciones': (context) => PublicacionesPage(),
        '/perfil': (context) => UsuarioPage(),
       '/doctores': (context) => DoctoresPage(),
        '/farmacias': (context) =>FarmaciasPage(),
       '/especialistas': (context) => EspecialistaPage(),
      },
    );
  }
}
