import 'package:flutter/material.dart';
import 'package:gym_app/screens/admin_page.dart';
import 'package:gym_app/screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Code Scanner App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        AdminPage.routeName: (context) => AdminPage(),
      },
    );
  }
}
