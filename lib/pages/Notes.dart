import 'package:flutter/material.dart';
import 'package:classico/pages/am.dart';
import 'package:classico/pages/fr.dart';
import 'package:classico/pages/jp.dart';

class Notes extends StatefulWidget {
  const Notes({Key? key}) : super(key: key);

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("bg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(

           children: [
             Container(
               padding: const EdgeInsets.all(10.0),
               margin: EdgeInsets.all(10.0),
                 child: Text('USA',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 30.0,),),
             ),
             Row(
               children:[
             Expanded(
               flex:3,

               child: Container(
                 padding: EdgeInsets.all(10.0),
                 margin: EdgeInsets.all(10.0),
               height: MediaQuery.of(context).size.height / 4,
               width: MediaQuery.of(context).size.width / 4,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(8.0),
                   image: DecorationImage(
                     image: AssetImage('U1.jpg'),
                     fit: BoxFit.cover,
                   ),
                 ),

               ),
             ),
             Expanded(
               flex: 4,
               child: Container(
                 padding: EdgeInsets.all(10.0),
                 margin: EdgeInsets.all(10.0),
                 height: MediaQuery.of(context).size.height / 4,
                 width: MediaQuery.of(context).size.width / 4,
                 child: Text(''' Travel to the United states of America. Explore USA like never before with the most affordable rates available in the market. Book now and enjoy with memories chersihed for a lifetime.''', style: TextStyle(fontStyle: FontStyle.italic,fontWeight:FontWeight.bold,fontSize: 17.0,
                   color: Colors.black, ),),

               ),
             ),
             Expanded(
               flex: 2,
               child: Container(
                 padding: EdgeInsets.all(10.0),
                 margin: EdgeInsets.all(10.0),
                 height: MediaQuery.of(context).size.height / 8,
                 width: MediaQuery.of(context).size.width / 2,
                 child: ElevatedButton.icon(
                   onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)
                   {return Am();}));} ,
                   icon: Icon( Icons.airplane_ticket),
                   label: Text(''),


                 ),

               ),
             ),
          ],
             ),
             Container(
               padding: const EdgeInsets.all(10.0),
               margin: EdgeInsets.all(10.0),
               child: Text('France',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 30.0,),),
             ),
             Row(
               children:[
                 Expanded(
                   flex:3,

                   child: Container(
                     padding: EdgeInsets.all(10.0),
                     margin: EdgeInsets.all(10.0),
                     height: MediaQuery.of(context).size.height / 4,
                     width: MediaQuery.of(context).size.width / 4,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(8.0),
                       image: DecorationImage(
                         image: AssetImage('f1.jpg'),
                         fit: BoxFit.cover,
                       ),
                     ),

                   ),
                 ),
                 Expanded(
                   flex: 4,
                   child: Container(
                     padding: EdgeInsets.all(10.0),
                     margin: EdgeInsets.all(10.0),
                     height: MediaQuery.of(context).size.height / 4,
                     width: MediaQuery.of(context).size.width / 4,
                     child: Text(''' Travel to France. Experience the country and know why it is one of the most visited places on the planet. Book Now.''', style: TextStyle(fontStyle: FontStyle.italic,fontWeight:FontWeight.bold,fontSize: 17.0,
                       color: Colors.black, ),),

                   ),
                 ),
                 Expanded(
                   flex: 2,
                   child: Container(
                     padding: EdgeInsets.all(10.0),
                     margin: EdgeInsets.all(10.0),
                     height: MediaQuery.of(context).size.height / 8,
                     width: MediaQuery.of(context).size.width / 2,
                     child: ElevatedButton.icon(
                       onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)
                       {return Fr();}));} ,
                       icon: Icon( Icons.airplane_ticket),
                       label: Text(''),


                     ),

                   ),
                 ),
               ],
             ),
             Container(
               padding: const EdgeInsets.all(10.0),
               margin: EdgeInsets.all(10.0),
               child: Text('Japan', style: TextStyle(fontWeight:FontWeight.bold,fontSize: 30.0,),),
             ),
             Row(
               children:[
                 Expanded(
                   flex:3,

                   child: Container(
                     padding: EdgeInsets.all(10.0),
                     margin: EdgeInsets.all(10.0),
                     height: MediaQuery.of(context).size.height / 4,
                     width: MediaQuery.of(context).size.width / 4,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(8.0),
                       image: DecorationImage(
                         image: AssetImage('jap1.jpg'),
                         fit: BoxFit.cover,
                       ),
                     ),

                   ),
                 ),
                 Expanded(
                   flex: 4,
                   child: Container(
                     padding: EdgeInsets.all(10.0),
                     margin: EdgeInsets.all(10.0),
                     height: MediaQuery.of(context).size.height / 4,
                     width: MediaQuery.of(context).size.width / 4,
                     child: Text(''' Travel to Japan. Japan is home to many of the world's most popular products. Visit japan's traditional places. ''', style: TextStyle(fontStyle: FontStyle.italic,fontWeight:FontWeight.bold,fontSize: 17.0,
                       color: Colors.black, ),),

                   ),
                 ),
                 Expanded(
                   flex: 2,
                   child: Container(
                     padding: EdgeInsets.all(10.0),
                     margin: EdgeInsets.all(10.0),
                     height: MediaQuery.of(context).size.height / 8,
                     width: MediaQuery.of(context).size.width / 2,
                     child: ElevatedButton.icon(
                       onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)
                       {return Jp();}));} ,
                       icon: Icon( Icons.airplane_ticket),
                       label: Text(''),


                     ),

                   ),
                 ),
               ],
             ),

    ],
           ),
        ),
      ),
      );
  }
}
