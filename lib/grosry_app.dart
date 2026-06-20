import 'package:flutter/material.dart';
import'login_screen.dart';
import 'registere_screen.dart';
import 'home_screen.dart';

class GrosryApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
       home:LoginScreen() ,
    );
  }
}