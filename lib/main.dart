import 'package:flutter/material.dart';
import 'package:budget_tracker/pages/second_page.dart';
import 'package:budget_tracker/pages/first_page.dart';

void main() => runApp(MaterialApp(
      initialRoute: 'home',
      routes: {
        'home': (context) => const Home(),
        'secondary': (context) => const Secondary(),
      },
    ));
