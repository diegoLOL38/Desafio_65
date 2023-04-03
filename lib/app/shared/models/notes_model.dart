class NotesModel {
  double nota1;
  double nota2;
  double nota3;
  double nota4;
  double? result;
  bool? isAproved;
  String? aproved;
  String? classification;
  double? lack;

  NotesModel({
    required this.nota1,
    required this.nota2,
    required this.nota3,
    required this.nota4,
    this.result,
    this.aproved,
    this.isAproved,
    this.classification,
    this.lack,
  });

  String classificacao() {
    if (result! > 9) {
      classification = 'A';
    } else if (result! <= 9 && result! >= 8) {
      classification = 'B';
    } else if (result! <= 8 && result! >= 6) {
      classification = 'C';
    } else if (result! <= 6 && result! >= 4) {
      classification = 'D';
    } else if (result! <= 4 && result! >= 2) {
      classification = 'E';
    } else {
      classification = 'F';
    }
    return classification!;
  }

  bool? aprovado() {
    if (classification == 'A' ||
        classification == 'B' ||
        classification == 'C') {
      isAproved = true;
    } else {
      isAproved = false;
    }
    return isAproved;
  }

  String? estaAprovado() {
    if (isAproved == true) {
      aproved = 'Aprovado';
    } else {
      aproved = 'Reprovado';
      lack = 6 - result!;
    }
    return aproved;
  }
}
