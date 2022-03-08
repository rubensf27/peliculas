import 'package:flutter/material.dart';
import 'screens/_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Películas',
      initialRoute: 'home',
      routes: {
        'home': (_) {
          return HomeScreen();
        },
        'details': (_) {
          return DetailsScreen();
        }
      },
    );
  }
}
