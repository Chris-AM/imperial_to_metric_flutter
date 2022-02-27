import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/helpers/error_dialog.dart';

class SquareMilesToMetric extends StatefulWidget {
  final String squareMile;
  const SquareMilesToMetric({Key? key, required this.squareMile})
      : super(key: key);

  @override
  _SquareMilesToMetricState createState() => _SquareMilesToMetricState();
}

class _SquareMilesToMetricState extends State<SquareMilesToMetric> {
  //* Converion Logic
  void _convertion(BuildContext context) {
    var inputOption = widget.squareMile;
    var convertedInput = double.parse(inputOption);
    double cmSqr =
        double.parse((convertedInput * 25899881103).toStringAsFixed(5));
    double dmSqr =
        double.parse((convertedInput * 258998811.03).toStringAsFixed(5));
    double mSqr =
        double.parse((convertedInput * 2589988.1103).toStringAsFixed(5));
    double kmSqr =
        double.parse((convertedInput * 2.5899881103).toStringAsFixed(10));

    var alertDialog = AlertDialog(
      title: const Text('sus resultados'),
      content: Text('$cmSqr cmˆ2\n$dmSqr dmˆ2\n$mSqr mˆ2\n$kmSqr kmˆ2'),
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
