import 'dart:math';

import 'package:flutter/material.dart';

import 'currentyear_widget.dart';
import 'inherited_age.dart';
import 'inherited_year.dart';
import 'age_widget.dart';
import 'birthyear_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int age = 0;
  int birthyear = 2000;
  @override
  Widget build(BuildContext context) {
    print("_MyHomePageState");
    return InheritedAge(
      age: age,
      reset: () {
        setState(() {
          age = 0;
        });
      },
      child: InheritedBirthyear(
        birthyear: birthyear,
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                age = Random().nextInt(40);
                birthyear = Random().nextInt(20) + 1990;
              });
            },
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                /* Builder(builder: (context) {
                  return Text('${InheritedAge.of(context)?.age}');
                }), */
                //Text('${InheritedCounter.of(context)?.counter}'),
                AgeWidget(),
                BirthyearWidget(),
                CurrentYearWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
