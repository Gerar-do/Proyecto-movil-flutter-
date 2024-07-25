import 'package:HealdConnect/pages/login_page.dart';
import 'package:HealdConnect/pages/register_page.dart';
import 'package:HealdConnect/pages/home_page.dart';
import 'package:HealdConnect/pages/usuario_page.dart';
import 'package:flutter/material.dart';
import 'package:HealdConnect/pages/publicaciones_page.dart';
import 'package:HealdConnect/pages/doctores_page.dart';
import 'package:HealdConnect/pages/farmacias_page.dart';
import 'package:HealdConnect/pages/especialistas_page.dart';
import 'package:HealdConnect/pages/admin_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HealdCoonect',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(),
      routes: {
        '/home': (context) => const HomePage(),
        '/register': (context) => const RegisterPage(),
        '/publicaciones': (context) => const PublicacionesPage(),
        '/perfil': (context) => const UsuarioPage(),
       '/doctores': (context) => const DoctoresPage(),
        '/farmacias': (context) =>const FarmaciasPage(),
       '/especialistas': (context) => const EspecialistaPage(),
        '/login': (context) => const LoginPage(),
        '/admin': (context) => const AdminPage(),
      },
    );
  }
}
