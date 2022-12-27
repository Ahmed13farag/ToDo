import 'package:flutter/material.dart';
import 'package:todo_mn/ui/home/home_screen.dart';
import 'package:todo_mn/ui/my_theme.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeScreen.routeName : (_)=> HomeScreen(),
      },
      initialRoute: HomeScreen.routeName ,

      theme: MyTheme.lightTheme,

    );

  }
}
