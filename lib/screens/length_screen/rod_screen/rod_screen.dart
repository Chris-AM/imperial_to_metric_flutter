import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/length_screen/rod_screen/rod_calculation.dart';

class RodScreen extends StatelessWidget {
  final String rodInput;
  const RodScreen({Key? key, required this.rodInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              const Text('Rod'),
              RodToMetric(rod: rodInput),
            ],
          ),
        );
  }
}
