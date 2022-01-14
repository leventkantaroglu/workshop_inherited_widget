import 'dart:math';

import 'package:flutter/material.dart';

import 'age_widget.dart';
import 'birthyear_widget.dart';
import 'currentyear_widget.dart';
import 'inherited_age.dart';
import 'inherited_year.dart';

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
