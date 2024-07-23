import 'package:flutter/material.dart';


class MyCard2 extends StatelessWidget{
  const MyCard2({ super.key });

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:25),
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color(0xFFAC5454),
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Estado de medicación',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
                fontSize: 12,
              ),
            ),
            Text('Activa',
              style: TextStyle(
                fontSize: 12,

                fontFamily: 'Montserrat',
                color: Colors.white,
              ),
            ),

            SizedBox(height: 5,),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Tipo de usuario',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                    fontSize: 12,
                  ),
                ),
                Text('paciente',
                  style: TextStyle(
                    fontSize: 12,

                    fontFamily: 'Montserrat',
                    color: Colors.white,
                  ),
                ),
                Icon(Icons.info,
                  size: 30,
                  color: Colors.white,
                )
                //
              ],
            ),
          ],

        ),
      ),
    );
  }
}