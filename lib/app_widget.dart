import 'package:flutter/material.dart';
import 'package:projeto_2/app_controller.dart';
import 'package:projeto_2/login_page.dart';

import 'home_page.dart';

class AppWiget extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
      return MaterialApp(
      theme: ThemeData(
        brightness: AppController.instance.isdarkTheme 
        ? Brightness.dark 
        : Brightness.light,
        ),
      home: const LoginPage(),
    );
 
    },
    );
  }
}

