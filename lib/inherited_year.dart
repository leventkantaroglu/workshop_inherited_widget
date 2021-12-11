import 'package:flutter/widgets.dart';

class InheritedBirthyear extends InheritedWidget {
  const InheritedBirthyear({
    Key? key,
    required Widget child,
    required this.birthyear,
  }) : super(key: key, child: child);

  final int birthyear;

  static InheritedBirthyear? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedBirthyear>();
  }

  @override
  bool updateShouldNotify(InheritedBirthyear oldWidget) {
    return oldWidget.birthyear != birthyear;
  }
}
