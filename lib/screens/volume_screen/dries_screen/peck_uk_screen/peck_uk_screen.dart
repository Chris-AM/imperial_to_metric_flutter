import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/screens/volume_screen/solid_screen/acre_foot_screen/acre_foot_calculation.dart';

class PeckUKScreen extends StatelessWidget {
  final String peckUKInput;
  const PeckUKScreen({Key? key, required this.peckUKInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Peck (UK)'),
          AcreFootToMetric(acreFoot: peckUKInput),
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
                      Text('0,25 Bushel (UK)'),
                      Text('0,25801418416531 Bushel (US)'),
                      Text('2,0641134733225 Galón'),
                      Text('8 Cuarto (UK)'),
                      Text('8,25645389329 Cuarto (US)')
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
