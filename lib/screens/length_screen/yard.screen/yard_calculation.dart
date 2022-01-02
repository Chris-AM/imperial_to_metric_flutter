import 'package:flutter/material.dart';

//* Yard to metric
class YardToMetric extends StatefulWidget {
  final String yard;
  const YardToMetric({Key? key, required this.yard}) : super(key: key);

  @override
  _YardToMetricState createState() => _YardToMetricState();
}

class _YardToMetricState extends State<YardToMetric> {
  void _convertion(BuildContext context) {
    var inputOption = widget.yard;
    var convertedInput = double.parse(inputOption);
    double cmResult = double.parse((convertedInput * 91.44).toStringAsFixed(5));
    double dmResult = double.parse((convertedInput * 9.144).toStringAsFixed(5));
    double mResult = double.parse((convertedInput * 0.9144).toStringAsFixed(5));
    double kmResult =
        double.parse((convertedInput * 0.0009144).toStringAsFixed(10));

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
