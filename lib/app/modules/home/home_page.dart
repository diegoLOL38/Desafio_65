import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF724AE0),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Bem Vindo',
          style: TextStyle(
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Color(0xFF4E0F5F),
      ),
      body: Column(
        children: [
          Icon(
            Icons.school_outlined,
            size: 80,
          ),
          Text(
            'isso ae',
          ),
        ],
      ),
    );
  }
}
