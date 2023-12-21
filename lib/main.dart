import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_test/constants.dart';
import 'package:ui_test/screens/homescreen.dart';
import 'package:ui_test/widgets/nav_item.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PageState()),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: priCol,
          secondary: Colors.white,
          background: Colors.white,
        ),
        // appBarTheme: const AppBarTheme(
        //   elevation: 0.5,
        //   backgroundColor: Colors.white,
        //   titleTextStyle: TextStyle(fontSize: 18, color: Colors.black),
        // ),
        primaryTextTheme: const TextTheme().apply(
          bodyColor: Colors.green,
          displayColor: Colors.black,
          fontFamily: 'Verdana',
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
