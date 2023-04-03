import 'package:boletim/app/modules/home/home_page.dart';
import 'package:boletim/app/modules/notes/notes.dart';
import 'package:boletim/app/modules/report/report_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Boletim',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      routes: {
        "/home": (context) => const HomePage(),
        "/notes": (context) => const Notes(),
        "/report": (context) => const ReportPage(),
      },
    );
  }
}
