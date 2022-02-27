import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/helpers/error_dialog.dart';

class ShortTonToMetric extends StatefulWidget {
  final String shortTon;
  const ShortTonToMetric({Key? key, required this.shortTon}) : super(key: key);

  @override
  _ShortTonToMetricState createState() => _ShortTonToMetricState();
}

class _ShortTonToMetricState extends State<ShortTonToMetric> {
  //* Converion Logic
  void _convertion(BuildContext context) {
    var inputOption = widget.shortTon;
    var convertedInput = double.parse(inputOption);
    double mgResult =
        double.parse((convertedInput * 907184740).toStringAsFixed(5));
    double gResult =
        double.parse((convertedInput * 907184.74).toStringAsFixed(5));
    double kgResult =
        double.parse((convertedInput * 907.18474).toStringAsFixed(10));

    var alertDialog = AlertDialog(
      title: const Text('sus resultados'),
      content: Text('$mgResult mg\n$gResult g\n$kgResult kg'),
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
