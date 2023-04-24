import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:classico/pages/log.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset : false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bg1.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
                children: [


                  Container(
                    margin: const EdgeInsets.all(35.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent),
                        color: Colors.teal
                    ),
                    child: Text('Go and select your dream destinations while browsing at your comfort.', style: TextStyle(fontStyle: FontStyle.italic,fontWeight:FontWeight.bold,fontSize: 30.0,
                      color: Colors.yellow,),),
                  ),
    CarouselSlider(
    items: [

    //1st Image of Slider
    Container(
    margin: EdgeInsets.all(6.0),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(8.0),
    image: DecorationImage(
    image: AssetImage('assets/t1.jpg'),
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
    image: AssetImage('assets/t2.jpg'),
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
    image: AssetImage('assets/t3.jpg'),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(10,40,20,10),
                        padding: const EdgeInsets.all(3.0),

                        width: MediaQuery.of(context).size.width / 2,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueAccent),
                            color: Colors.lightBlue[200]
                        ),
                        child: Text('''Book your dream destination whenever you want and wherever you are at.''',style: TextStyle(fontSize: 16.0 ,fontWeight:FontWeight.bold,color: Colors.black) , ),
                      ),

                    ],
                  ),
                  Row(  mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(10,10,20,40),
                        padding: const EdgeInsets.all(3.0),

                        width: MediaQuery.of(context).size.width / 2,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueAccent),
                            color: Colors.lightBlue[200]
                        ),
                        child: Text('''Easy and smooth booking experience.''',style: TextStyle(fontSize: 16.0 ,fontWeight:FontWeight.bold,color: Colors.black) , ),
                      ),

                    ],

                  ),
                  Center(
                    child: Container(
                        margin: const EdgeInsets.all(40.0),
                        padding: const EdgeInsets.all(3.0),
                        child: Text('Our Testimonials',style: TextStyle(fontSize: 16.0 ,fontWeight:FontWeight.bold,color: Colors.black) ,)),
                  ),
                  CarouselSlider(
                    items: [

                      //1st Image of Slider
                      Container(
                        padding: const EdgeInsets.all(10.0),

                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Text(''' Amazing APP!! It was very smooth and had no issues at all.
                                                                        -Andrew''', style: TextStyle(fontSize: 16.0 ,fontWeight:FontWeight.bold,color: Colors.black) ,),
                      ),

                      //2nd Image of Slider
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Text('''Just Brilliant!! I am very satisfied with this app. It helped me book my destination very quickly and seamlessly.
                                                                           -Tobey''',style: TextStyle(fontSize: 16.0 ,fontWeight:FontWeight.bold,color: Colors.black) ,),
                      ),

                      //3rd Image of Slider
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Text(''' Wow!! This app helps anyone to book their ticket for their vacation trip.
                                                                               -Tom''',style: TextStyle(fontSize: 16.0 ,fontWeight:FontWeight.bold,color: Colors.black) ,),
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
                  Row(
                    children: [
                      Container(
                         margin: EdgeInsets.fromLTRB(200, 30, 0, 30),
                        child: FloatingActionButton(

                          child: Icon(Icons.logout),
                          backgroundColor: Colors.red,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)
                            {return Log();}));

                          },
                        ),),
                    ],
                  ),
    ],

            ),

          ),
        ),
      ),
    );
  }
}
