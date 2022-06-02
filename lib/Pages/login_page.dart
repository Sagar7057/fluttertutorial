// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
        Image.asset("assets/images/login.png",
        fit: BoxFit.cover,),

        const SizedBox(
          height: 20.0,
        ),
        
        const Text("Welcome",  
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        )
        ),

        const SizedBox(
          height: 20.0,
        ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
          child: Column(
            children: [
              TextFormField(
            decoration: 
            const InputDecoration(hintText: "Enter UserName",labelText:"username"),
          ) ,
          
          TextFormField(
            obscureText: true,
            decoration: 
            const InputDecoration(hintText: "Enter Password",labelText:"password"),
          ) ,
            ],
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),

        ElevatedButton(
          onPressed: () {
            print("Hiii");
          }, 
          style: TextButton.styleFrom(),
          child: const Text("Login")
        )

        ],
      )
    );
  }
}