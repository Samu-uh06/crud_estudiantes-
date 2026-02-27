import 'datos.dart';

void calcularPromedioGeneral() {
  print('\n--- PROMEDIO GENERAL DEL CURSO ---');
  
  if (estudiantes.isEmpty) {
    print('No hay estudiantes registrados');
    return;
  }
  
  double suma = 0;
  double mejorPromedio = estudiantes[0]['promedio'];
  double peorPromedio = estudiantes[0]['promedio'];
  String mejorNombre = estudiantes[0]['nombre'];
  String peorNombre = estudiantes[0]['nombre'];
  
  for (int i = 0; i < estudiantes.length; i++) {
    suma = suma + estudiantes[i]['promedio'];
    
    if (estudiantes[i]['promedio'] > mejorPromedio) {
      mejorPromedio = estudiantes[i]['promedio'];
      mejorNombre = estudiantes[i]['nombre'];
    }
    
    if (estudiantes[i]['promedio'] < peorPromedio) {
      peorPromedio = estudiantes[i]['promedio'];
      peorNombre = estudiantes[i]['nombre'];
    }
  }
  
  double promedioGeneral = suma / estudiantes.length;
  
  print('Cantidad total de estudiantes: ${estudiantes.length}');
  print('Promedio general del curso: ${promedioGeneral.toStringAsFixed(2)}');
  print('Mejor estudiante: $mejorNombre (${mejorPromedio.toStringAsFixed(2)})');
  print('Estudiante con menor promedio: $peorNombre (${peorPromedio.toStringAsFixed(2)})');
}