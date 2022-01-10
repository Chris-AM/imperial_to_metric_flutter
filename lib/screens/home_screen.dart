import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30),
      child: Center(
        child: Column(
          children: [
            const Text(
              'Bienvenido',
              style: TextStyle(fontSize: 30),
            ),
            Container(
              padding: const EdgeInsets.only(top: 30),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: const FadeInImage(
                  image: AssetImage('assets/images/logo_imp_500_x_550.png'),
                  placeholder: AssetImage('assets/images/loading.gif'),
                  height: 250,
                  width: 250,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 30),
              width: 300,
              child: const Text(
                'Esta es la calculadora de conversiones de unidades imperiales a métricas. Pincha en cualquiera de los íconos de abajo para comenzar convertir.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
