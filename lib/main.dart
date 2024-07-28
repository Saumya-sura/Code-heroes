import 'package:flutter/material.dart';
import 'package:foss/cal.dart';
import 'package:foss/encrypt.dart';
import 'package:foss/feedback.dart';
import 'package:foss/home.dart';
import 'package:foss/toss.dart';
import 'package:foss/translator.dart';
import 'package:feedback/feedback.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BetterFeedback(
      child: MaterialApp(
        title: 'Tools',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          brightness: Brightness.light,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.blue,
        ),
        themeMode: ThemeMode.dark,
        initialRoute: '/',
        routes: {
          '/': (context) => Home(),
          '/encrypt': (context) => Encryption(),
          '/Cal': (context) => Cal(),
          '/toss': (context) => Coin(),
          '/translator': (context) => Translate(),
          '/feedback': (context) => Feed(),
        },
      ),
    );
  }
}
