import 'package:flutter/material.dart';
import 'package:classico/pages/qpage.dart';
import 'package:classico/models/info_model.dart';

class View extends StatefulWidget {
  const View({Key? key}) : super(key: key);

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
  final _formKey = GlobalKey<FormState>();
  final _nameController =TextEditingController();
  final _mailController =TextEditingController();
  final _queryController =TextEditingController();
  information inf= information();
  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Scaffold(
      body:
      Container(
      decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("b9.jpg"),
    fit: BoxFit.cover,
    ),
      ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              margin: EdgeInsets.all(10.0),
              child: Text('Please tell us your queries',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 30.0,),),
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
                  icon: const Icon(Icons.email),
                  hintText: 'Enter email',
                  labelText: 'Email',
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

                controller: _queryController,
                decoration: const InputDecoration(
                  icon: const Icon(Icons.question_mark_sharp),
                  hintText: 'Enter your query',
                  labelText: 'Query',
                ),
              ),
              new Container(
                  padding: const EdgeInsets.only(left: 200.0, top: 40.0),
                  child: new ElevatedButton(
                    child: const Text('Submit'),
                    onPressed: () {
                      if(_formKey.currentState!.validate())
                        {
inf.uname= _nameController.text;
inf.umail= _mailController.text;
inf.uquery= _queryController.text;

Navigator.push(context, MaterialPageRoute(builder: (context)
{return Qpage(inf: inf);}));
                        }
                    },

                  )),
            ],
          ),
    ),
        ],
        ),
      ),
    );
  }
}