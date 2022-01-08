import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/volume_screen/dries_screen/quart_us_screen/quart_us_calculation.dart';

class BarrelUSScreen extends StatelessWidget {
  final String barrelUSInput;
  const BarrelUSScreen({Key? key, required this.barrelUSInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Cuarto (US)'),
          QuartUSToMetric(quartUS: barrelUSInput),
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
                      Text('Barril (UK)'),
                      Text('Barril (US)'),
                      Text('Onza Líquida (UK)'),
                      Text('Onza Líquida (US)'),
                      Text('Minim (UK)'),
                      Text('Minim (US)'),
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
