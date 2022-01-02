import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/length_screen/furlong_screen/furlong_calculation.dart';

class FurlongScreen extends StatelessWidget {
  final String furlongInput;
  const FurlongScreen({Key? key, required this.furlongInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Furlong'),
          FurlongToMetric(furlong: furlongInput),
        ],
      ),
    );
  }
}
