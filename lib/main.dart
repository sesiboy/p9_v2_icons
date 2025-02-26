import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Oculta el banner de depuración
      home: Scaffold(
        appBar: AppBar(
          title: Text("Jireh Correa"),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
          centerTitle: true,
          backgroundColor:
              Color(0xffb40d28), // Color personalizado para el AppBar
        ),
        body: Column(
          children: <Widget>[
            // Texto con el nombre
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Eduardo Jireh Correa García 0344 6J",
                style: TextStyle(fontSize: 20, color: Color(0xff000000)),
              ),
            ),
            SizedBox(height: 50), // Espacio entre el texto y los iconos
            // Primera fila con 3 iconos
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconWithLabel(
                  icon: Icons.home,
                  label: 'Inicio',
                  color: Colors.blue,
                ),
                IconWithLabel(
                  icon: Icons.search,
                  label: 'Buscar',
                  color: Colors.green,
                ),
                IconWithLabel(
                  icon: Icons.favorite,
                  label: 'Favoritos',
                  color: Colors.red,
                ),
              ],
            ),
            SizedBox(height: 40), // Espacio entre las filas
            // Segunda fila con 3 iconos
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconWithLabel(
                  icon: Icons.settings,
                  label: 'Configuración',
                  color: Colors.orange,
                ),
                IconWithLabel(
                  icon: Icons.notifications,
                  label: 'Notificaciones',
                  color: Colors.purple,
                ),
                IconWithLabel(
                  icon: Icons.star,
                  label: 'Estrella',
                  color: Colors.yellow,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class IconWithLabel extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  IconWithLabel({
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 40, color: color), // Icono con color personalizado
        SizedBox(height: 8), // Espacio entre el icono y el texto
        Text(label),
      ],
    );
  }
}
