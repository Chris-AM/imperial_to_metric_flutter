import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/helpers/error_dialog.dart';

//* Feet to metric
class FeetToMetric extends StatefulWidget {
  final String feet;
  const FeetToMetric({Key? key, required this.feet}) : super(key: key);

  @override
  _FeetToMetricState createState() => _FeetToMetricState();
}

class _FeetToMetricState extends State<FeetToMetric> {
  void _convertion(BuildContext context) {
    var inputOption = widget.feet;
    var convertedInput = double.parse(inputOption);
    double cmResult = double.parse((convertedInput * 30.48).toStringAsFixed(5));
    double dmResult = double.parse((convertedInput * 3.048).toStringAsFixed(5));
    double mResult = double.parse((convertedInput * 0.3048).toStringAsFixed(5));
    double kmResult =
        double.parse((convertedInput * 0.0003048).toStringAsFixed(10));

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

  void _badAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return const ErrorDialog();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      child: ElevatedButton(
        onPressed: () {
          try {
            _convertion(context);
          } catch (e) {
            _badAlertDialog(context);
          }
        },
        child: const Text('Calcular'),
      ),
    );
  }
}
