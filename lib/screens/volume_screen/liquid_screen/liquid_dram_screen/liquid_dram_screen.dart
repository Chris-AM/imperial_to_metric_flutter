import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/screens/volume_screen/liquid_screen/liquid_dram_screen/liquid_dram_calculation.dart';

class LiquidDramScreen extends StatelessWidget {
  final String liquidDramInput;
  const LiquidDramScreen({Key? key, required this.liquidDramInput})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Dram Líquido'),
          LiquidDramToMetric(liquidDram: liquidDramInput),
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
                      Text('0.0000225877 Barril (UK)'),
                      Text('0.000031002 Barril (US)'),
                      Text('0.0000232515 Barril (Petroleo)'),
                      Text('0.1301053413 Onza Líquida (UK)'),
                      Text('0.125 Onza Líquida (US)'),
                      Text('62.450563847 Minim (UK)'),
                      Text('60 Minim (US)'),
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
