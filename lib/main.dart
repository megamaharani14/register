import 'package:flutter/material.dart';
import 'package:register/login_page.dart';
import 'package:register/register_page.dart';
import 'package:register/profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login/Register Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/profile' : (context)=> ProfilePage(),
      },
    );
  }
}
