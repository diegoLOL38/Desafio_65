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
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              Text(
                'Escola\n2023',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0, backgroundColor: Colors.transparent),
                onPressed: () {
                  Navigator.pushNamed(context, "/notes");
                },
                child: const Icon(
                  Icons.school_outlined,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
