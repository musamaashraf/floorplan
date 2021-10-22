import 'package:floorplan/routes/routegenerator.dart';
import 'package:floorplan/routes/routenames.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Floor Plan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: signUpRoute,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
