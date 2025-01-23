import 'package:adivina_el_numero_app/escoge_numero.dart';
import 'package:flutter/material.dart';

class SelectorAdivina extends StatelessWidget {
  const SelectorAdivina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Title(color: Colors.white, child: Text("HOY ESTAS DE SUERTE")),
            Image.asset("assets/images/adivina_numero.png"),
            Text("Adivina el Numero que estoy 0 AL 100"),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  backgroundColor: Colors.red,
                  context: context,
                  builder: (_) {
                    return EscogeNumero();
                  },
                );
              },
              child: Text("Empieza"),
            )
          ],
        ),
      ),
    );
  }
}
