import 'package:flutter/material.dart';

class EscogeNumero extends StatefulWidget {
  const EscogeNumero({super.key});

  @override
  State<EscogeNumero> createState() => _EscogeNumero();
}

class _EscogeNumero extends State<EscogeNumero> {
  var numeroActual = 60.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      height: 400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("¡Estoy pensando en un mumero adivina cual es¡"),
          Text("Creo que es"),
          Text("${numeroActual.toInt()}"),
          Slider(
              min: 1,
              max: 120,
              value: numeroActual,
              onChanged: (nuevoValor) {
                setState(() {
                  numeroActual = nuevoValor;
                });
              }),
          Text("utiliza el Slider para adivina"),
          ElevatedButton(
            onPressed: () {},
            child: Text("EMPEZAR"),
          )
        ],
      ),
    );
  }
}
