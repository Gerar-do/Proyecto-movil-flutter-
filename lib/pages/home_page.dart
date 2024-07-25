import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:HealdConnect/util/my_card.dart';
import 'package:HealdConnect/util/my_second_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Page controller
  final _controller = PageController();

  // Variable para almacenar el rol del usuario
  String _userRole = '';

  @override
  void initState() {
    super.initState();
    _loadUserRole();
  }

  // Función para cargar el rol del usuario desde SharedPreferences
  Future<void> _loadUserRole() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _userRole = prefs.getString('role') ?? '';
    });
  }

  Future<void> _logout() async {
    // Obtén el token almacenado
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');

    // Realiza la solicitud de logout
    final response = await http.post(
      Uri.parse('http://100.27.164.138:4000/api/auth/logout'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      // Elimina el token almacenado
      await prefs.remove('token');

      // Redirige a la pantalla de login
      Navigator.pushReplacementNamed(context, '/login');
    } else {
      // Manejo de error
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error al cerrar sesión')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: _logout,
        backgroundColor: Colors.white,
        child: Icon(
          Icons.logout,
          color: Colors.red,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: 64,
        color: Colors.grey[900],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
              icon: Icon(Icons.home),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings),
              color: Colors.white,
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // AppBar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Mi ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            fontFamily: 'Satisfy',
                          ),
                        ),
                        Text(
                          'menú',
                          style: TextStyle(
                            fontSize: 28,
                            fontFamily: 'Satisfy',
                          ),
                        ),
                      ],
                    ),

                    Container(   // button de perfil
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.black87,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Datos y recordatorios',
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Poppins',
                ),
              ),
              // Cards
              const SizedBox(height: 20),
              SizedBox(
                height: 150,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  children: const [
                    MyCard(),
                    MyCard2(),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              SmoothPageIndicator(
                controller: _controller,
                count: 2,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.grey.shade600,
                ),
              ),
              const SizedBox(height: 25),
              // Buttons
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Button de doctores
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/doctores');
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(),
                              ],
                            ),
                            child: Center(
                              child: Image.asset('assets/images/img3.png'),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            'Doctores',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Button de farmacias
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/farmacias');
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blue.shade900,
                                ),
                              ],
                            ),
                            child: Center(
                              child: Image.asset('assets/images/img2.png'),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            'Farmacias',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Especialistas
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/especialistas');
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.yellow.shade500,
                                ),
                              ],
                            ),
                            child: Center(
                              child: Image.asset('assets/images/img1.png'),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            'Especialistas',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Publicaciones
              Padding(
                padding: const EdgeInsets.all(21.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/publicaciones');
                  },
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Icono
                          Container(
                            padding: const EdgeInsets.all(9),
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.grey[800],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Image.asset('assets/images/health_16504185.png'),
                          ),
                          const SizedBox(width: 20),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Publicaciones',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 6),
                                Text(
                                  'Conoce a los encargados de la salud',
                                  style: TextStyle(
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Icon(Icons.arrow_forward),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              if (_userRole == 'admin')
                Padding(
                  padding: const EdgeInsets.all(21.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/admin');
                    },
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Icono
                            Container(
                              padding: const EdgeInsets.all(9),
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Image.asset('assets/images/admin.png'),
                            ),
                            const SizedBox(width: 20),
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Administrador',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    'Podras administrar a los usuarios',
                                    style: TextStyle(
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Icon(Icons.arrow_forward),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
