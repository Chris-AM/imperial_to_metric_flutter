import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/screens/volume_screen/liquid_screen/liquid_ounce_us_screen/liquid_ounce_us_calculation.dart';

class LiquidOunceUSScreen extends StatelessWidget {
  final String liquidOunceUSInput;
  const LiquidOunceUSScreen({Key? key, required this.liquidOunceUSInput})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Onza Líquida (US)'),
          LiquidOunceUSToMetric(liquidOunceUS: liquidOunceUSInput),
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
                      Text('0.0001807019 Barril (UK)'),
                      Text('0.0002480159 Barril (US)'),
                      Text('0.0001860119 Barril (Petroleo)'),
                      Text('1.0408427308 Onza Líquida (UK)'),
                      Text('499.60451078 Minim (UK)'),
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
