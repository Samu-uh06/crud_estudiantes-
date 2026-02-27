import 'dart:io';
import 'agregar.dart';
import 'listar.dart';
import 'actualizar.dart';
import 'eliminar.dart';
import 'promedio.dart';

void main() {
  while (true) {
    mostrarMenu();
    String opcion = stdin.readLineSync()!;
    
    if (opcion == '1') {
      agregarEstudiante();
    } else if (opcion == '2') {
      listarEstudiantes();
    } else if (opcion == '3') {
      actualizarEstudiante();
    } else if (opcion == '4') {
      eliminarEstudiante();
    } else if (opcion == '5') {
      calcularPromedioGeneral();
    } else if (opcion == '6') {
      print('\n¡Hasta luego!');
      break;
    } else {
      print('\nOpción inválida');
    }
  }
}

void mostrarMenu() {
  print('SISTEMA DE GESTIÓN DE ESTUDIANTES');
  print('1. Agregar estudiante');
  print('2. Listar estudiantes');
  print('3. Actualizar estudiante');
  print('4. Eliminar estudiante');
  print('5. Calcular promedio general del curso');
  print('6. Salir');
  stdout.write('Seleccione una opción: ');
}