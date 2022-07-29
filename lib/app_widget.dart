import 'package:flutter/material.dart';
import 'package:flutter_hands_on/pages/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hands On',
      home: const HomePage(),
      theme: ThemeData(appBarTheme: AppBarTheme(backgroundColor: Colors.black)),
    );
  }
}
