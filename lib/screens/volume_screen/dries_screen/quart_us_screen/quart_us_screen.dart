import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/screens/volume_screen/dries_screen/quart_us_screen/quart_us_calculation.dart';

class QuartUSScreen extends StatelessWidget {
  final String quartUSInput;
  const QuartUSScreen({Key? key, required this.quartUSInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Cuarto (US)'),
          QuartUSToMetric(quartUS: quartUSInput),
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
                      Text('0.1212 Peck (UK)'),
                      Text('0.125 Peck (US)'),
                      Text('0.25 Galón'),
                      Text('0.8326741846 Cuarto (UK)'),
                      Text('2 Pinta')
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
