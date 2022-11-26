import 'package:flutter/material.dart';

import 'app_screen.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram UI',
      home: AppScreen(),
    );
  }
}
