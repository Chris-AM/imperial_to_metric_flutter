import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/volume_screen/liquid_screen/minim_us_screen/minim_us_calculation.dart';

class MinimUSScreen extends StatelessWidget {
  final String minimUSInput;
  const MinimUSScreen({Key? key, required this.minimUSInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Cuarto (US)'),
          MinimUSToMetric(minimUS: minimUSInput),
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
                      Text('0.0021684224 Onza Líquida (UK)'),
                      Text('0.0020833333 Onza Líquida (US)'),
                      Text('1.0408427308 Minim (UK)'),
                      Text('0.0166666667 Dracma Líquido'),
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
