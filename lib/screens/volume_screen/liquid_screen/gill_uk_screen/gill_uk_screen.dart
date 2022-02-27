import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/screens/volume_screen/liquid_screen/gill_uk_screen/gill_uk_calculation.dart';

class GillUKScreen extends StatelessWidget {
  final String gillUKInput;
  const GillUKScreen({Key? key, required this.gillUKInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Gill (UK)'),
          GillUKToMetric(gillUK: gillUKInput),
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
                      Text('0.0008680556 Barril (UK)'),
                      Text('0.0011914186 Barril (US)'),
                      Text('0.0008935639 Barril (Petroleo)'),
                      Text('5 Onza Líquida (UK)'),
                      Text('4.803799702 Onza Líquida (US)'),
                      Text('2400 Minim (UK)'),
                      Text('2305.823857 Minim (US)'),
                      Text('1.2009499255 Gill (US)'),
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
