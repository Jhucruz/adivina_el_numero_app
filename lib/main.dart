import 'package:flutter/material.dart';
import 'package:adivina_el_numero_app/pagina_inicio.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          dialogBackgroundColor: Colors.amber,
          scaffoldBackgroundColor: Colors.amber,
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.amber,
              titleTextStyle: TextStyle(fontSize: 28, color: Colors.black),
              centerTitle: true),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.amber,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16))),
          )),
      home: PaginaInicio(),
    );
  }
}
