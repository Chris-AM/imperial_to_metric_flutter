import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/screens/surface.screen/square_yard_screen/square_yard_calculation.dart';

class SquareYardScreen extends StatelessWidget {
  final String squareYardInput;
  const SquareYardScreen({Key? key, required this.squareYardInput})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Yardaˆ2'),
          SquareYardToMetric(squareYard: squareYardInput),
          Container(
            padding: const EdgeInsets.only(top: 20),
            width: 300,
            child: Column(
              children: [
                const Text(
                  'Equivalencia:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.5,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: const [
                      Text('0.0002066116 Acre'),
                      Text('0.0330578512 Rodˆ2'),
                      Text('9 Piesˆ2'),
                      Text('1296 Pulgadasˆ2'),
                      Text('0.0008264463 Rood')
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
