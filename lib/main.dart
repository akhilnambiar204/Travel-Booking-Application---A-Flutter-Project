import 'dart:js';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
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

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MaterialApp(
    initialRoute: '/log',
    routes: {
      '/nav': (context) => Nav(),
      '/home': (context) => Home(),
      '/Notes': (context) => Notes(),
      '/view': (context) => View(),
      // '/qpage': (context) => Qpage(),
      '/am': (context) => Am(),
      '/fr': (context) => Fr(),
      '/jp': (context) => Jp(),
      '/log': (context) => Log(),
      '/sign': (context) => Sign(),
    },
  ));
}



