import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/volume_screen/liquid_screen/minim_uk_screen/minim_uk_calculation.dart';

class MinimUKScreen extends StatelessWidget {
  final String minimUKInput;
  const MinimUKScreen({Key? key, required this.minimUKInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Minim (UK)'),
          MinimUKToMetric(minimUK: minimUKInput),
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
                      Text('0.0020833333 Onza Líquida (UK)'),
                      Text('0.0020015832 Onza Líquida (US)'),
                      Text('0.9607599404 Minim (US)'),
                      Text('0.0160126657 Dram Líquido'),
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
