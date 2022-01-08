import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/volume_screen/liquid_screen/liquid_ounce_uk_screen/liquid_ounce_uk_calculation.dart';

class LiquidOunceUKScreen extends StatelessWidget {
  final String liquidOunceUKInput;
  const LiquidOunceUKScreen({Key? key, required this.liquidOunceUKInput})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Onza Líquida (UK)'),
          LiquidOunceUKToMetric(liquidOunceUK: liquidOunceUKInput),
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
                      Text('0.0001736111 Barril (UK)'),
                      Text('0.0002382837 Barril (US)'),
                      Text('0.0001787128 Barril (Petroleo)'),
                      Text('0.9607599404 Onza Líquida (US)'),
                      Text('461.16477139 Minim (UK)'),
                      Text('480 Minim (US)'),
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
