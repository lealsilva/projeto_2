
// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String senha = '';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: const Color.fromARGB(255, 80, 64, 83),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              onChanged: (text){
                email = text;
              },
              autofocus: true,  
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(color: Colors.white, fontSize: 25),
              decoration: const InputDecoration(
                labelText: 'email',
                labelStyle: TextStyle(color: Colors.white, fontSize: 20))
            ),
            const Divider(),
            TextFormField(
              onChanged: (text){
                senha = text;
              },
              keyboardType: TextInputType.text,
              autofocus: true,  
              obscureText: true,
              style: const TextStyle(color: Colors.white, fontSize: 25),
              decoration: const InputDecoration(
                labelText: 'password',
                labelStyle: TextStyle(color: Colors.white, fontSize: 20)
              ),
        ),
            const Divider(),
            ButtonTheme(
            height: 60.0,
            child: ElevatedButton(
              onPressed:() => {
                if(email == 'wilkysdasilvaleal@gmail.com' && 
                senha == '123') {
                  print('correto'),
                }else{
                 print('errado') 
                }
              },
              child: const Text(
                'Entrar',
                style: TextStyle(color: Colors.deepPurple),
              ),
            ),
            )
            
        ],
        ),
        ),
      ),
    );
  }
  
  
}