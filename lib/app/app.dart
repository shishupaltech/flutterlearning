import 'package:flutter/material.dart';
import 'package:flutter_learn/views/home_view.dart';
// stateless widget is a widget that does not required mutable state
// stateful widget is a

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter Learn",
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        home: const HomeView());
  }
}
