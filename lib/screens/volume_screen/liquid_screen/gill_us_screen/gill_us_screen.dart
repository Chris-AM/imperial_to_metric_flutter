import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/volume_screen/dries_screen/quart_us_screen/quart_us_calculation.dart';
import 'package:imperial_to_metric_flutter/screens/volume_screen/liquid_screen/gill_us_screen/gill_us_calculation.dart';

class GillUSScreen extends StatelessWidget {
  final String gillUSInput;
  const GillUSScreen({Key? key, required this.gillUSInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Gill (US)'),
          GillUSToMetric(gillUS: gillUSInput),
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
                      Text('0.0007228075 Barril (UK)'),
                      Text('0.0009920635 Barril (US)'),
                      Text('0.0007440476 Barril (Petroleo)'),
                      Text('4.1633709231 Onza Líquida (UK)'),
                      Text('4 Onza Líquida (US)'),
                      Text('1998.4180431 Minim (UK)'),
                      Text('1920 Minim (US)'),
                      Text('0.8326741846 Gill (UK)'),
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
