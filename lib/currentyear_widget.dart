import 'package:flutter/material.dart';

import 'inherited_age.dart';
import 'inherited_year.dart';

class CurrentYearWidget extends StatelessWidget {
  const CurrentYearWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("CurrentYearWidget");

    var currentYear = (InheritedBirthyear.of(context)?.birthyear ?? 0) +
        (InheritedAge.of(context)?.age ?? 0);
    return Text('CurrentYear: $currentYear');
  }
}
