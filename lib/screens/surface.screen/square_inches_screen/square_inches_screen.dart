import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/surface.screen/square_inches_screen/square_inches_calculation.dart';

class SquareInchesScreen extends StatelessWidget {
  final String sqaureInches;
  const SquareInchesScreen({Key? key, required this.sqaureInches})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Pulgadasˆ2'),
          SquareInchesToMetric(squareInches: sqaureInches),
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
                      Text('0.0007716049 Yardasˆ2'),
                      Text('0.0069444444 Piesˆ2'),
                      Text('0.0000255076 Rodˆ2'),
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
