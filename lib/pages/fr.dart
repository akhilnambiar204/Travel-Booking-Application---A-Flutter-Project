import 'package:flutter/material.dart';
import 'package:classico/pages/Nav.dart';
import 'package:classico/models/info_model.dart';
import 'package:classico/pages/booking.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Fr extends StatefulWidget {
  const Fr({Key? key}) : super(key: key);

  @override
  State<Fr> createState() => _FrState();
}

class _FrState extends State<Fr> {
  final _formKey = GlobalKey<FormState>();
  final _nameController =TextEditingController();
  final _mailController =TextEditingController();
  final _queryController =TextEditingController();
  information inf= information();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 20.0),
              child: Text('Book Your Trip Here'),
            ),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  TextFormField(
                    validator: (value){
                      if(value==null || value.isEmpty)
                      {
                        return'please enter some text';

                      }
                      else null;

                    },
                    controller: _nameController,
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.person),
                      hintText: 'Enter your name',
                      labelText: 'Name',
                    ),
                  ),
                  TextFormField(
                    validator: (value){
                      if(value==null || value.isEmpty)
                      {
                        return'please enter some text';

                      }
                      else null;

                    },
                    controller: _mailController,
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.phone),
                      hintText: 'Enter a phone number',
                      labelText: 'Phone',
                    ),
                  ),
                  TextFormField(
                    validator: (value){
                      if(value==null || value.isEmpty)
                      {
                        return'please email';

                      }
                      else null;

                    },

                    controller: _queryController,
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.email),
                      hintText: 'Enter email address',
                      labelText: 'Email',
                    ),
                  ),
                  new Container(
                      padding: const EdgeInsets.only(left: 200.0, top: 40.0),
                      child: new ElevatedButton(
                        child: const Text('Book Now'),
                        onPressed: () {
                          if(_formKey.currentState!.validate())
                          {
                            inf.uname= _nameController.text;
                            inf.umail= _mailController.text;
                            inf.uquery= _queryController.text;
                            inf.country= 'France';

                            Navigator.push(context, MaterialPageRoute(builder: (context)
                            {return Booking(inf: inf);}));
                          }
                        },

                      )),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 30),
              child: Text('Dont miss out on visiting this amazing place', style:TextStyle(fontWeight: FontWeight.bold, fontSize: 15,)),
            ),
            CarouselSlider(
              items: [

                //1st Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage('f1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //2nd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage('f2.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //3rd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage('f3.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
              options: CarouselOptions(
                height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
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
            )
          ],


        ),
      ),

    );
  }
}
