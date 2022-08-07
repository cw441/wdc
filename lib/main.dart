import 'package:flutter/material.dart';
import 'package:untitled/screen/homePage.dart';
import 'MainAll.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.redAccent,
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.red),
          titleTextStyle: TextStyle(
            fontSize: Theme.of(context).textTheme.titleLarge!.fontSize,
            fontWeight: Theme.of(context).textTheme.titleLarge!.fontWeight,
            color: Colors.redAccent,
          ),
        ),
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => aa(),
        // place another page here
      },
    );
  }
}
