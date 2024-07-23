import 'package:flutter/material.dart';
import 'package:demo/util/my_card.dart';
import 'package:demo/util/my_second_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Page controller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            // AppBar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
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
                  // Plus button
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.add),
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
                activeDotColor: Colors.grey.shade700 ,

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
                              BoxShadow(

                              )
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
                              )
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
                                color: Colors.yellow.shade700,
                              )
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
                        const Column(
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
                        const Icon(Icons.arrow_forward),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}