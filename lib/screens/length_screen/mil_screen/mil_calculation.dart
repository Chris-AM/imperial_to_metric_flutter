import 'package:flutter/material.dart';

//* Mils to metric
class MilToMetric extends StatefulWidget {
  final String mil;

  const MilToMetric({Key? key, required this.mil}) : super(key: key);

  @override
  State<MilToMetric> createState() => _MilToMetricState();
}

class _MilToMetricState extends State<MilToMetric> {
  void _convertion(BuildContext context) {
    var inputOption = widget.mil;
    var convertedInput = double.parse(inputOption);
    double cmResult =
        double.parse((convertedInput * 0.00254).toStringAsFixed(5));
    double mResult =
        double.parse((convertedInput * 0.0000254).toStringAsFixed(5));
    double dmResult =
        double.parse((convertedInput * 0.000254).toStringAsFixed(5));
    double kmResult =
        double.parse((convertedInput * 0.00000000254).toStringAsFixed(10));

    var alertDialog = AlertDialog(
      title: const Text('sus resultados'),
      content: Text('$cmResult cm\n$dmResult dm\n$mResult m\n$kmResult km'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cerrar'),
        )
      ],
    );

    showDialog(
      context: context,
      builder: (context) {
        return alertDialog;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      child: ElevatedButton(
        onPressed: () {
          _convertion(context);
        },
        child: const Text('Calcular'),
      ),
    );
  }
}
