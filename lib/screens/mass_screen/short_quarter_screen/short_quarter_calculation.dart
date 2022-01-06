import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/helpers/error_dialog.dart';

class ShortQuarterToMetric extends StatefulWidget {
  final String shortQuarter;
  const ShortQuarterToMetric({Key? key, required this.shortQuarter})
      : super(key: key);

  @override
  _ShortQuarterToMetricState createState() => _ShortQuarterToMetricState();
}

class _ShortQuarterToMetricState extends State<ShortQuarterToMetric> {
  //* Converion Logic
  void _convertion(BuildContext context) {
    var inputOption = widget.shortQuarter;
    var convertedInput = double.parse(inputOption);
    double mgResult =
        double.parse((convertedInput * 11339809.25).toStringAsFixed(5));
    double gResult =
        double.parse((convertedInput * 11339.80925).toStringAsFixed(5));
    double kgResult =
        double.parse((convertedInput * 11.33980925).toStringAsFixed(10));

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
