import 'package:flutter/widgets.dart';

class InheritedAge extends InheritedWidget {
  const InheritedAge({
    Key? key,
    required Widget child,
    required this.age,
    this.reset,
  }) : super(key: key, child: child);

  final int age;
  final Function? reset;

  static InheritedAge? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedAge>();
  }

  @override
  bool updateShouldNotify(InheritedAge oldWidget) {
    return oldWidget.age != age;
  }
}
