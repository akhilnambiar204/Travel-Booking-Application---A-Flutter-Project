import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:classico/models/info_model.dart';
import 'package:flutter/material.dart';
import 'package:classico/pages/home.dart';
import 'package:classico/pages/Notes.dart';
import 'package:classico/pages/view.dart';
import 'package:classico/pages/nav.dart';
// import 'package:classico/pages/qpage.dart';
import 'package:classico/pages/am.dart';
import 'package:classico/pages/fr.dart';
import 'package:classico/pages/jp.dart';
import 'package:classico/pages/log.dart';
import 'package:classico/pages/sign.dart';


class Sign extends StatefulWidget {
  const Sign({Key? key}) : super(key: key);

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  final _formKey = GlobalKey<FormState>();
  final _nameController =TextEditingController();
  final _mailController =TextEditingController();
  final _queryController =TextEditingController();
  information inf= information();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.blueAccent),
              color: Colors.blue[100]
          ),
          child: Column(
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.all(30),
                  child: Image.asset('signn.png'),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(90, 0, 0, 0),
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
                              Container(

                                child: Form(
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
                                            return'please enter email';

                                          }
                                          else null;

                                        },
                                        controller: _mailController,
                                        decoration: const InputDecoration(
                                          icon: const Icon(Icons.email),
                                          hintText: 'Enter a email',
                                          labelText: 'email',
                                        ),
                                      ),
                                      TextFormField(
                                        obscureText: true,

                                        validator: (value){
                                          if(value==null || value.isEmpty)
                                          {
                                            return'enter password';

                                          }
                                          else null;

                                        },

                                        controller: _queryController,
                                        decoration: const InputDecoration(
                                          icon: const Icon(Icons.password),
                                          hintText: 'password',
                                          labelText: 'password',
                                        ),
                                      ),
                                      new Container(
                                          padding: const EdgeInsets.only(left: 70, top: 40.0),
                                          child: new ElevatedButton(
                                            child: const Text('SignUp'),
                                            onPressed: () {
                                              FirebaseAuth.instance
                                                  .createUserWithEmailAndPassword(email: _mailController.text, password: _queryController.text).then((value){
                                                Navigator.push(context, MaterialPageRoute(builder: (context)
                                                {return Log();}));
                                              }).onError((error, stackTrace) {
                                                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Fill all fields properly')));
                                              });
                                            //   if(_formKey.currentState!.validate())
                                            //   {
                                            //     inf.uname= _nameController.text;
                                            //     inf.umail= _mailController.text;
                                            //     inf.uquery= _queryController.text;
                                            //     inf.country='USA';
                                            //
                                            //     Navigator.push(context, MaterialPageRoute(builder: (context)
                                            //     {return Booking(inf: inf);}));
                                            //   }
                                            },

                                          )),
                                      new Container(
                                          padding: const EdgeInsets.only(left: 70, top: 40.0),
                                          child: new ElevatedButton(
                                            child: const Text('Login'),
                                            onPressed: () {

                                                Navigator.push(context, MaterialPageRoute(builder: (context)
                                                {return Log();}));

                                            },

                                          )),
                                    ],
                                  ),
                                ),
                              ),



                            ],
                          ),
                        ),
                      ),
                    ),
                  )


                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
