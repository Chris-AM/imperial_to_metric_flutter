//* Fathom to metric
import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/helpers/error_dialog.dart';

class FathomToMetric extends StatefulWidget {
  final String fathom;
  const FathomToMetric({Key? key, required this.fathom}) : super(key: key);

  @override
  _FathomToMetricState createState() => _FathomToMetricState();
}

class _FathomToMetricState extends State<FathomToMetric> {
  void _convertion(BuildContext context) {
    var inputOption = widget.fathom;
    var convertedInput = double.parse(inputOption);
    double cmResult =
        double.parse((convertedInput * 182.88036576).toStringAsFixed(5));
    double dmResult =
        double.parse((convertedInput * 18.288036576).toStringAsFixed(5));
    double mResult =
        double.parse((convertedInput * 1.8288036576).toStringAsFixed(5));
    double kmResult =
        double.parse((convertedInput * 0.0018288037).toStringAsFixed(10));

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
