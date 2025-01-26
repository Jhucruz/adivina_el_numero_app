import 'package:flutter/material.dart';

class EscogeNumero extends StatefulWidget {
  final int numeroAdivinar;
  const EscogeNumero({super.key, required this.numeroAdivinar});

  @override
  State<EscogeNumero> createState() => _EscogeNumero();
}

class _EscogeNumero extends State<EscogeNumero> {
  var numeroActual = 60.0;
  var adivino = false;
  int? numeroSeleccionado;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      height: 400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (adivino) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("¡Adivinaste!"),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Volver"),
            )
          ] else ...[
            Text("¡Estoy pensando en un mumero adivina cual es¡"),
            Text("Creo que es"),
            if (numeroSeleccionado != null &&
                numeroSeleccionado! > widget.numeroAdivinar) ...[
              Text("Muy alto"),
            ] else if (numeroSeleccionado != null &&
                numeroSeleccionado! < widget.numeroAdivinar) ...[
              Text("Muy bajo"),
            ],
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
              onPressed: () {
                //TODO: Implementar la logica de adivinar el numero
                setState(() {
                  numeroSeleccionado = numeroActual.toInt();
                  if (numeroSeleccionado == widget.numeroAdivinar) {
                    adivino = true;
                  }
                });
              },
              child: Text("EMPEZAR"),
            )
          ]
        ],
      ),
    );
  }
}
