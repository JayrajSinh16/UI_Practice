import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food_App_UI',

      darkTheme: ThemeData.dark(
        //colorScheme:const ColorScheme.dark(),
        useMaterial3: true,
      ),


      // theme: ThemeData.light(
      //   useMaterial3: true,
      // ),
      home: const HomeScreen(),
    );
  }
}

