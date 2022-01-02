import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/length_screen/chain_screen/chain_calculation.dart';

class ChainScreen extends StatelessWidget {
  final String chainInput;
  const ChainScreen({Key? key, required this.chainInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Cadenas'),
          ChainToMetric(chain: chainInput),
        ],
      ),
    );
  }
}
