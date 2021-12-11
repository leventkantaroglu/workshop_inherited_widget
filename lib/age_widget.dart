import 'package:flutter/material.dart';

import 'inherited_age.dart';

class AgeWidget extends StatelessWidget {
  const AgeWidget({Key? key}) : super(key: key);

  void resetState(BuildContext context) {
    final inheritedAge = InheritedAge.of(context);
    //InheritedBirthyear.of(context)?.birthyear = 2000;
    if (inheritedAge?.reset != null) inheritedAge!.reset!();
  }

  @override
  Widget build(BuildContext context) {
    print("AgeWidget");

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Age: ${InheritedAge.of(context)?.age}'),
        TextButton(
          onPressed: () {
            resetState(context);
          },
          child: const Text("Reset"),
        ),
      ],
    );
  }
}
