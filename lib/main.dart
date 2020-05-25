import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/register.dart';
import 'pages/results.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Home(),
        '/register': (context) => Register(),
        '/results': (context) => Results(),
        '/home': (context) => Home(),
      },
    ));
