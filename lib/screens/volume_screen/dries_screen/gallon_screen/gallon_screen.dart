import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/screens/volume_screen/solid_screen/acre_foot_screen/acre_foot_calculation.dart';

class GallonScreen extends StatelessWidget {
  final String gallonInput;
  const GallonScreen({Key? key, required this.gallonInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Galón'),
          AcreFootToMetric(acreFoot: gallonInput),
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
                      Text('0,12111737229135 Bushel (UK)'),
                      Text('0,125 Bushel (US)'),
                      Text('8 Pinta'),
                      Text('3.3306967385 Cuarto (UK)'),
                      Text('4 Cuarto (US)')
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
