import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/helpers/error_dialog.dart';

class PoundToMetric extends StatefulWidget {
  final String pound;
  const PoundToMetric({Key? key, required this.pound}) : super(key: key);

  @override
  _PoundToMetricState createState() => _PoundToMetricState();
}

class _PoundToMetricState extends State<PoundToMetric> {
  //* Converion Logic
  void _convertion(BuildContext context) {
    var inputOption = widget.pound;
    var convertedInput = double.parse(inputOption);
    double mgResult =
        double.parse((convertedInput * 453592.37).toStringAsFixed(5));
    double gResult =
        double.parse((convertedInput * 453.59237).toStringAsFixed(5));
    double kgResult =
        double.parse((convertedInput * 0.45359237).toStringAsFixed(10));
    

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
