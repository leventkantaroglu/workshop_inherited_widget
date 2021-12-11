import 'package:flutter/material.dart';
import 'inherited_year.dart';

class BirthyearWidget extends StatelessWidget {
  const BirthyearWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("BirthyearWidget");
    return Text('Born: ${InheritedBirthyear.of(context)?.birthyear}');
  }
}
