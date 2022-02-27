import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/helpers/error_dialog.dart';

class PintToMetric extends StatefulWidget {
  final String pint;
  const PintToMetric({Key? key, required this.pint}) : super(key: key);

  @override
  _PintToMetricState createState() => _PintToMetricState();
}

class _PintToMetricState extends State<PintToMetric> {
  //* Converion Logic
  void _convertion(BuildContext context) {
    var inputOption = widget.pint;
    var convertedInput = double.parse(inputOption);
    double mmCb =
        double.parse((convertedInput * 473176.473).toStringAsFixed(5));
    double cmCb =
        double.parse((convertedInput * 473.176473).toStringAsFixed(5));
    double mCb =
        double.parse((convertedInput * 0.0004731765).toStringAsFixed(5));
    double litre =
        double.parse((convertedInput * 0.473176473).toStringAsFixed(5));
    double kmCb =
        double.parse((convertedInput * 4.731764729e-13).toStringAsFixed(10));

    var alertDialog = AlertDialog(
      title: const Text('sus resultados'),
      content:
          Text('$mmCb mmˆ3\n$cmCb cmˆ3\n$mCb mˆ3\n$litre litros\n$kmCb kmˆ3'),
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
