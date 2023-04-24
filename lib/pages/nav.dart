import 'package:flutter/material.dart';
import 'package:classico/pages/home.dart';
import 'package:classico/pages/Notes.dart';
import 'package:classico/pages/view.dart';
 class Nav extends StatefulWidget {
   const Nav({Key? key}) : super(key: key);

   @override
   State<Nav> createState() => _NavState();
 }

 class _NavState extends State<Nav> {
   int _selectedIndex = 0;
   List<Widget> pagelist = <Widget>[
     const Home(),
     const Notes(),
     const View(),



   ];
   void _onItemTapped(int index) {
     setState(() {
       _selectedIndex = index;
     });
   }
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(

           title: const Text('Travel App'),
           backgroundColor: Colors.green,


       ),
       body: Center(
         child: pagelist.elementAt(_selectedIndex),
       ),
       bottomNavigationBar: BottomNavigationBar(
           items: const <BottomNavigationBarItem>[
             BottomNavigationBarItem(
                 icon: Icon(Icons.home),
                 label: 'Home',
                 backgroundColor: Colors.green
             ),
             BottomNavigationBarItem(
                 icon: Icon(Icons.search),
                 label: 'Flights',
                 backgroundColor: Colors.yellow
             ),
             BottomNavigationBarItem(
               icon: Icon(Icons.person),
               label: 'Query',
               backgroundColor: Colors.blue,
             ),
           ],
           type: BottomNavigationBarType.shifting,
           currentIndex: _selectedIndex,
           selectedItemColor: Colors.black,
           iconSize: 40,
           onTap: _onItemTapped,
           elevation: 5
       ),
     );
   }
 }