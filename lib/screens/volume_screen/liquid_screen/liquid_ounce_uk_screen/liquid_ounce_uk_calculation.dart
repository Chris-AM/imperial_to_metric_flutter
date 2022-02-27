import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/helpers/error_dialog.dart';

class LiquidOunceUKToMetric extends StatefulWidget {
  final String liquidOunceUK;
  const LiquidOunceUKToMetric({Key? key, required this.liquidOunceUK})
      : super(key: key);

  @override
  _LiquidOunceUKToMetricState createState() => _LiquidOunceUKToMetricState();
}

class _LiquidOunceUKToMetricState extends State<LiquidOunceUKToMetric> {
  //* Converion Logic
  void _convertion(BuildContext context) {
    var inputOption = widget.liquidOunceUK;
    var convertedInput = double.parse(inputOption);
    double mmCb =
        double.parse((convertedInput * 28413.0625).toStringAsFixed(5));
    double cmCb =
        double.parse((convertedInput * 28.4130625).toStringAsFixed(5));
    double mCb =
        double.parse((convertedInput * 0.0000284131).toStringAsFixed(5));
    double litre =
        double.parse((convertedInput * 0.0284130625).toStringAsFixed(5));
    double kmCb =
        double.parse((convertedInput * 2.84130625e-14).toStringAsFixed(20));

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
