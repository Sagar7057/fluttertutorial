import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catlog App"),
      ),
      body:const Center(
        child:Text("Hello")
      ),
      drawer: const Drawer(),
    );
    
  }
}