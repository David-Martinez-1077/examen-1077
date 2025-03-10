import 'package:flutter/material.dart';

void main() {
  runApp(MiExamen());
}
class MiExamen extends StatelessWidget {
  const MiExamen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<IconData> icons = [
    Icons.star,
    Icons.add_alarm_rounded,
    Icons.home,
    Icons.work,
    Icons.school,
  ];

  // Lista de textos diferentes
  final List<String> textos = [
    "Cursos Favoritos",
    "Cursos",
    "Inicio",
    "Mis cursos",
    "Buscar cursos",
  ];

  // Lista de colores diferentes para los íconos
  final List<Color> colores = [
    Colors.amber,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.purple,
  ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        appBar: AppBar(
          title: Text('ListView: David Yair Martínez Nava: 1077'),
          backgroundColor: Colors.redAccent,
        ),
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.all(1.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero, // Sin bordes redondeados
              ),
              child: ListTile(
                leading: Icon(
                  icons[index],
                  color: colores[index], // Color único para cada ícono
                ),
                title: Text(textos[index]), // Texto único
                trailing: Icon(Icons.arrow_forward), // Flecha al final
              ),
            );
          },
        ),
      ),
    );
  }
}
