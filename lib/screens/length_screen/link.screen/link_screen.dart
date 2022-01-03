import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/length_screen/link.screen/link_calculator.dart';

class LinkScreen extends StatelessWidget {
  final String linkInput;
  const LinkScreen({Key? key, required this.linkInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Links'),
          LinkToMetric(link: linkInput),
        ],
      ),
    );
  }
}
