import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/surface.screen/square_rod_screen/square_rod_calculation.dart';

class SqaureRodScreen extends StatelessWidget {
  final String squareRodInput;
  const SqaureRodScreen({Key? key, required this.squareRodInput})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Rodˆ2'),
          SquareRodToMetric(squareRod: squareRodInput),
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
                      Text('0.0000097656 Millasˆ2'),
                      Text('30.25 Yardasˆ2'),
                      Text('272.25 Piesˆ2'),
                      Text('39204 Pulgadasˆ2'),
                      Text('0.025 Rood')
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
