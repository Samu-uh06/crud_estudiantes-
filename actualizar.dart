import 'dart:io';
import 'datos.dart';

void actualizarEstudiante() {
  print('\n--- ACTUALIZAR ESTUDIANTE ---');

  if (estudiantes.isEmpty) {
    print('No hay estudiantes registrados');
    return;
  }

  stdout.write('Índice del estudiante: ');
  int indice = int.parse(stdin.readLineSync()!);

  if (indice < 0 || indice >= estudiantes.length) {
    print('Índice inválido');
    return;
  }

  stdout.write('Nombre [${estudiantes[indice]['nombre']}]: ');
  String nombre = stdin.readLineSync()!;
  if (nombre.isNotEmpty) {
    estudiantes[indice]['nombre'] = nombre;
  }

  stdout.write('Edad [${estudiantes[indice]['edad']}]: ');
  String edadStr = stdin.readLineSync()!;
  if (edadStr.isNotEmpty) {
    int edad = int.parse(edadStr);
    if (edad > 0) {
      estudiantes[indice]['edad'] = edad;
    }
  }

  stdout.write('Nota 1 [${estudiantes[indice]['nota1']}]: ');
  String nota1Str = stdin.readLineSync()!;
  if (nota1Str.isNotEmpty) {
    double nota1 = double.parse(nota1Str);
    if (nota1 >= 0 && nota1 <= 5) {
      estudiantes[indice]['nota1'] = nota1;
    }
  }

  stdout.write('Nota 2 [${estudiantes[indice]['nota2']}]: ');
  String nota2Str = stdin.readLineSync()!;
  if (nota2Str.isNotEmpty) {
    double nota2 = double.parse(nota2Str);
    if (nota2 >= 0 && nota2 <= 5) {
      estudiantes[indice]['nota2'] = nota2;
    }
  }

  stdout.write('Nota 3 [${estudiantes[indice]['nota3']}]: ');
  String nota3Str = stdin.readLineSync()!;
  if (nota3Str.isNotEmpty) {
    double nota3 = double.parse(nota3Str);
    if (nota3 >= 0 && nota3 <= 5) {
      estudiantes[indice]['nota3'] = nota3;
    }
  }

  estudiantes[indice]['promedio'] =
      (estudiantes[indice]['nota1'] +
          estudiantes[indice]['nota2'] +
          estudiantes[indice]['nota3']) /
      3;

  print('Estudiante actualizado');
}
