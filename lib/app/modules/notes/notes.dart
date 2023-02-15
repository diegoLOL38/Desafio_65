import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Notes extends StatefulWidget {
  const Notes({super.key});

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  final controller3 = TextEditingController();
  final controller4 = TextEditingController();

  String? passed;
  String? classification;
  double result = 0;
  double lack = 0;
  bool? pass;

  void math() {
    double value1 = double.parse(controller1.text);
    double value2 = double.parse(controller2.text);
    double value3 = double.parse(controller3.text);
    double value4 = double.parse(controller4.text);
    setState(() {
      result = (value1 + value2 + value3 + value4) / 4;

      if (result > 9) {
        classification = 'A';
        pass = true;
      } else if (result <= 9 && result >= 8) {
        classification = 'B';
        pass = true;
      } else if (result <= 8 && result >= 6) {
        classification = 'C';
        pass = true;
      } else if (result <= 6 && result >= 4) {
        classification = 'D';
        pass = false;
      } else if (result <= 4 && result >= 2) {
        classification = 'E';
        pass = false;
      } else {
        classification = 'F';
        pass = false;
      }

      if (classification == 'A' ||
          classification == 'B' ||
          classification == 'C') {
        pass = true;
      } else {
        pass = false;
      }

      if (pass == true) {
        passed = 'Aprovado';
      } else {
        passed = 'Reprovado';
        lack = 6 - result;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        centerTitle: true,
        title: Text('Informações'),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          Text(
            '1° Nota',
            style: TextStyle(
              fontSize: 17,
            ),
          ),
          TextField(
            controller: controller1,
            keyboardType: TextInputType.number,
          ),
          Text(
            '2° Nota',
            style: TextStyle(
              fontSize: 17,
            ),
          ),
          TextField(
            controller: controller2,
            keyboardType: TextInputType.number,
          ),
          Text(
            '3° Nota',
            style: TextStyle(
              fontSize: 17,
            ),
          ),
          TextField(
            controller: controller3,
            keyboardType: TextInputType.number,
          ),
          Text(
            '4° Nota',
            style: TextStyle(
              fontSize: 17,
            ),
          ),
          TextField(
            controller: controller4,
            keyboardType: TextInputType.number,
          ),
          ElevatedButton(
            onPressed: math,
            child: Text(
              'Finalizar',
            ),
            style: ElevatedButton.styleFrom(primary: Colors.purple),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Resultado Final é $result\n'
            'Classificação é $classification, $passed\n'
            'Quanto faltou para ser aprovado $lack',
            style: TextStyle(fontSize: 19),
          ),
          SizedBox(
            height: 50,
          ),
          FloatingActionButton(
            child: Icon(Icons.arrow_downward),
            backgroundColor: Colors.purple,
            foregroundColor: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
