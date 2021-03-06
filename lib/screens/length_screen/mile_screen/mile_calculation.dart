import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/helpers/error_dialog.dart';

//* Mile to metric
class MileToMetric extends StatefulWidget {
  final String mile;
  const MileToMetric({Key? key, required this.mile}) : super(key: key);

  @override
  _MileToMetricState createState() => _MileToMetricState();
}

class _MileToMetricState extends State<MileToMetric> {
  void _convertion(BuildContext context) {
    var inputOption = widget.mile;
    var convertedInput = double.parse(inputOption);
    double cmResult =
        double.parse((convertedInput * 160934).toStringAsFixed(5));
    double dmResult =
        double.parse((convertedInput * 16093.4).toStringAsFixed(5));
    double mResult =
        double.parse((convertedInput * 1609.34).toStringAsFixed(5));
    double kmResult =
        double.parse((convertedInput * 1.60934).toStringAsFixed(10));

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
