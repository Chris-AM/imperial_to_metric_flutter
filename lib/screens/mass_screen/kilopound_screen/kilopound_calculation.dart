import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/helpers/error_dialog.dart';

class KilopoundToMetric extends StatefulWidget {
  final String kiloPounds;
  const KilopoundToMetric({Key? key, required this.kiloPounds})
      : super(key: key);

  @override
  _KilopoundToMetricState createState() => _KilopoundToMetricState();
}

class _KilopoundToMetricState extends State<KilopoundToMetric> {
  //* Converion Logic
  void _convertion(BuildContext context) {
    var inputOption = widget.kiloPounds;
    var convertedInput = double.parse(inputOption);
    double mgResult =
        double.parse((convertedInput * 453592370).toStringAsFixed(5));
    double gResult =
        double.parse((convertedInput * 453592.37).toStringAsFixed(5));
    double kgResult =
        double.parse((convertedInput * 453.59237).toStringAsFixed(10));

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
