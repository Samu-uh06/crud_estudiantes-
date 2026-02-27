import 'dart:io';
import 'datos.dart';

void agregarEstudiante() {
  print('\n--- AGREGAR ESTUDIANTE ---');

  stdout.write('Nombre: ');
  String nombre = stdin.readLineSync()!;
  if (nombre.isEmpty) {
    print('El nombre no puede estar vacío');
    return;
  }

  stdout.write('Edad: ');
  int edad = int.parse(stdin.readLineSync()!);
  if (edad <= 0) {
    print('Edad inválida');
    return;
  }

  stdout.write('Nota 1 (0-5): ');
  double nota1 = double.parse(stdin.readLineSync()!);
  if (nota1 < 0 || nota1 > 5) {
    print('Nota inválida');
    return;
  }

  stdout.write('Nota 2 (0-5): ');
  double nota2 = double.parse(stdin.readLineSync()!);
  if (nota2 < 0 || nota2 > 5) {
    print('Nota inválida');
    return;
  }

  stdout.write('Nota 3 (0-5): ');
  double nota3 = double.parse(stdin.readLineSync()!);
  if (nota3 < 0 || nota3 > 5) {
    print('Nota inválida');
    return;
  }

  double promedio = (nota1 + nota2 + nota3) / 3;

  estudiantes.add({
    'nombre': nombre,
    'edad': edad,
    'nota1': nota1,
    'nota2': nota2,
    'nota3': nota3,
    'promedio': promedio,
  });

  print('Estudiante agregado. Promedio: ${promedio.toStringAsFixed(2)}');
}
