import 'package:boletim/app/shared/models/notes_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as NotesModel;
    return Scaffold(
      backgroundColor: Color(0xFF44B6E7),
      body: Center(
        child: Text(
          "Resultado: ${args.result}\n"
          "Classificação: ${args.classification}\n"
          "${args.aproved}\n"
          "Faltou para aprovação: ${args.lack ?? '0 parabéns'}",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
