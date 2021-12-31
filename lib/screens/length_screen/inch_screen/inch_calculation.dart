import 'package:flutter/material.dart';

//* inches to metric

class InchesToMetric extends StatefulWidget {
  final String inches;
  const InchesToMetric({Key? key, required this.inches}) : super(key: key);

  @override
  _InchesToMetricState createState() => _InchesToMetricState();
}

class _InchesToMetricState extends State<InchesToMetric> {
  void _convertion(BuildContext context) {
    var inputOption = widget.inches;
    var convertedInput = double.parse(inputOption);
    double cmResult = double.parse((convertedInput * 2.54).toStringAsFixed(5));
    double mResult = double.parse((convertedInput * 0.0254).toStringAsFixed(5));
    double dmResult = double.parse((convertedInput * 0.254).toStringAsFixed(5));
    double kmResult = double.parse((convertedInput * 0.0000254).toStringAsFixed(10));

    var alertDialog = AlertDialog(
      title: const Text('sus resultados'),
      content: Text('$cmResult cm\n$mResult m\n$dmResult dm\n$kmResult km'),
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

