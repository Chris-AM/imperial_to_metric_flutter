import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/helpers/error_dialog.dart';

//* Long Ton (UK)
class LongTonToMetric extends StatefulWidget {
  final String longTon;
  const LongTonToMetric({Key? key, required this.longTon}) : super(key: key);

  @override
  _LongTonToMetricState createState() => _LongTonToMetricState();
}

class _LongTonToMetricState extends State<LongTonToMetric> {
  //* Converion Logic
  void _convertion(BuildContext context) {
    var inputOption = widget.longTon;
    var convertedInput = double.parse(inputOption);
    double mgResult =
        double.parse((convertedInput * 1016046908.8).toStringAsFixed(5));
    double gResult =
        double.parse((convertedInput * 1016046.9088).toStringAsFixed(5));
    double kgResult =
        double.parse((convertedInput * 1016.0469088).toStringAsFixed(10));

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
