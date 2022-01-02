import 'package:flutter/material.dart';

//* Rod to metric
class RodToMetric extends StatefulWidget {
  final String rod;
  const RodToMetric({Key? key, required this.rod}) : super(key: key);

  @override
  _RodToMetricState createState() => _RodToMetricState();
}

class _RodToMetricState extends State<RodToMetric> {
  void _convertion(BuildContext context) {
    var inputOption = (widget.rod).replaceAll(',', '.');
    var convertedInput = double.parse(inputOption);
    double cmResult =
        double.parse((convertedInput * 502.92).toStringAsFixed(3));
    double dmResult =
        double.parse((convertedInput * 50.292).toStringAsFixed(3));
    double mResult = double.parse((convertedInput * 5.0292).toStringAsFixed(3));
    double kmResult =
        double.parse((convertedInput * 0.0050292).toStringAsFixed(3));

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
