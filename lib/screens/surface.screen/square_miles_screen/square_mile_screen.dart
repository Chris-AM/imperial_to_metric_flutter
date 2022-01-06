import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/surface.screen/square_miles_screen/square_mile_calculation.dart';

class SquareMileScreen extends StatelessWidget {
  final String squareMileInput;
  const SquareMileScreen({Key? key, required this.squareMileInput})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Millaˆ2'),
          SquareMilesToMetric(squareMile: squareMileInput),
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
                      Text('3097600 Yardasˆ2'),
                      Text('27878400 Piesˆ2'),
                      Text('4014489600 Pulgadasˆ2'),
                      Text('102400 Rodˆ2'),
                      Text('2560 Rood')
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
