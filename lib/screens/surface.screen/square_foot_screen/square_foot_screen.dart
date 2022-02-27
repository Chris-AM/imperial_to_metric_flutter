import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/screens/surface.screen/square_foot_screen/square_foot_calculation.dart';

class SquareFootScreen extends StatelessWidget {
  final String squareFoot;
  const SquareFootScreen({Key? key, required this.squareFoot})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Piesˆ2'),
          SquareFootToMetric(squareFoot: squareFoot),
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
                      Text('0.0000229568 Acre'),
                      Text('0.1111111111 Yardasˆ2'),
                      Text('0.0036730946 Rodˆ2'),
                      Text('144 Pulgadasˆ2'),
                      Text('0.0000918274 Rood')
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
