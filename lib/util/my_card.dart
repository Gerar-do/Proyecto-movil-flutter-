import 'package:flutter/material.dart';


class MyCard extends StatelessWidget{
   const MyCard({ super.key });

   @override
  Widget build(BuildContext context){
     return Padding(
       padding: const EdgeInsets.symmetric(horizontal:25),
       child: Container(
         width: 300,
         padding: const EdgeInsets.all(20),
         decoration: BoxDecoration(
           color: Color(0xFF7146ED),
           borderRadius: BorderRadius.circular(16),
         ),
         child: const Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text('Nombre completo',
               style: TextStyle(
                 fontFamily: 'Montserrat',
                 fontSize: 12,
                 color: Colors.white,
               ),
             ),
             Text('Gerardo Jafet Toledo Cañaveral',
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontFamily: 'Poppins',
                 color: Colors.white,
                 fontSize: 15,
               ),
             ),
             SizedBox(height: 30,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text('ID de usuario ',
                   style: TextStyle(
                     color: Colors.white,
                     fontFamily: 'Poppins',
                     fontSize: 12,
                   ),
                 ),
                 Text(' 12354899',
                   style: TextStyle(
                     fontSize: 15,

                     fontWeight: FontWeight.bold,
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