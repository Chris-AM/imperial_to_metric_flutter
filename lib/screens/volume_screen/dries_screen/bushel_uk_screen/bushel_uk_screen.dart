import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/screens/volume_screen/dries_screen/bushel_uk_screen/bushel_uk_calculation.dart';

class BushelUKScreen extends StatelessWidget {
  final String bushelUKInput;
  const BushelUKScreen({Key? key, required this.bushelUKInput})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Bushel (UK)'),
          BushelUKToMetric(bushelUK: bushelUKInput),
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
                      Text('66.05163114632 Pinta'),
                      Text('1.0320567366612 Bushel (US)'),
                      Text('8.25645389329 Galón'),
                      Text('32 Cuarto (UK)'),
                      Text('33.02581557316 Cuarto (US)')
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
