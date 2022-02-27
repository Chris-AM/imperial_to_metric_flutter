import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/screens/surface.screen/acre_screen/acre_calculation.dart';

class CubicYardScreen extends StatelessWidget {
  final String cubicYardInput;
  const CubicYardScreen({Key? key, required this.cubicYardInput})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Yardaˆ3'),
          AcreToMetric(acre: cubicYardInput),
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
                      Text('147197952000 Pieˆ3'),
                      Text('46656 Pulgadaˆ3'),
                      Text('0.0006198347 Acre-Pie'),
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
