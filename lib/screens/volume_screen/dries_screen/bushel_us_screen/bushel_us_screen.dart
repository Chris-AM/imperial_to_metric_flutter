import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/volume_screen/dries_screen/bushel_us_screen/bushel_us_calculation.dart';

class BushelUSScreen extends StatelessWidget {
  final String bushelUSInput;
  const BushelUSScreen({Key? key, required this.bushelUSInput})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Bushel (US)'),
          BushelUSToMetric(bushelUS: bushelUSInput),
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
                      Text('0.96893897833083 Bushel (UK)'),
                      Text('64 Pinta'),
                      Text('8 Galón'),
                      Text('31,006047306587 Cuarto (UK)'),
                      Text('32 Cuarto (US)')
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
