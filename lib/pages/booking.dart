import 'package:flutter/material.dart';
import 'package:classico/pages/view.dart';
import 'package:classico/pages/home.dart';
import 'package:classico/pages/nav.dart';
import 'package:classico/models/info_model.dart';

class Booking extends StatelessWidget {
  Booking(
      {Key? key, required this.inf,}
      )
      : super(key: key);
  information inf;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("bg3.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              child:Text('Booked', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white,),),
            ),
            Center(
              child: Card(
                elevation: 50,
                  shadowColor: Colors.black,
                  color: Colors.greenAccent[100],
                child:SizedBox(
                  width: 300,
                  // height: 500,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text('Name : ' + inf.uname,style: TextStyle(
                      fontSize: 15,
                      color: Colors.green[900],
                      fontWeight: FontWeight.w500,
                    ), ),
                        Text('Email: '+ inf.uquery,style: TextStyle(
                          fontSize: 15,
                          color: Colors.green[900],
                          fontWeight: FontWeight.w500,
                        ), ),
                        Text('Phone No: '+ inf.umail,style: TextStyle(
                          fontSize: 15,
                          color: Colors.green[900],
                          fontWeight: FontWeight.w500,
                        ), ),
                        Text('Country: '+ inf.country,style: TextStyle(
                          fontSize: 15,
                          color: Colors.green[900],
                          fontWeight: FontWeight.w500,
                        ), ),

                    Container(
                        margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
                        child: FloatingActionButton(

                          child: Icon(Icons.home),
                          backgroundColor: Colors.green,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)
                            {return Nav();}));

                          },
                        ),
                    ),
                      ],
                    ),
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}


