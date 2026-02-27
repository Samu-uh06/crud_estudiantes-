import 'dart:io';
import 'datos.dart';

void eliminarEstudiante() {
  print('\n--- ELIMINAR ESTUDIANTE ---');
  
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
  
  String nombre = estudiantes[indice]['nombre'];
  estudiantes.removeAt(indice);
  print('Estudiante "$nombre" eliminado');
}
