
import 'package:estudo_bloc_pattern/modules/counter/counter_module.dart';
import 'package:estudo_bloc_pattern/modules/counter/counter_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slidy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterModule(),
    );
  }
}
