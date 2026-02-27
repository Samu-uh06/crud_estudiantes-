import 'datos.dart';

void listarEstudiantes() {
  print('\n--- LISTA DE ESTUDIANTES ---');
  
  if (estudiantes.isEmpty) {
    print('No hay estudiantes registrados');
    return;
  }
  
  for (int i = 0; i < estudiantes.length; i++) {
    print('\n[$i] ${estudiantes[i]['nombre']}');
    print('    Edad: ${estudiantes[i]['edad']}');
    print('    Nota 1: ${estudiantes[i]['nota1']}');
    print('    Nota 2: ${estudiantes[i]['nota2']}');
    print('    Nota 3: ${estudiantes[i]['nota3']}');
    print('    Promedio: ${estudiantes[i]['promedio'].toStringAsFixed(2)}');
  }
}
