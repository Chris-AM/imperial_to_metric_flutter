import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/helpers/error_dialog.dart';

//* Furlong to metric
class FurlongToMetric extends StatefulWidget {
  final String furlong;
  const FurlongToMetric({Key? key, required this.furlong}) : super(key: key);

  @override
  _FurlongToMetricState createState() => _FurlongToMetricState();
}

class _FurlongToMetricState extends State<FurlongToMetric> {
  void _convertion(BuildContext context) {
    var inputOption = widget.furlong;
    var convertedInput = double.parse(inputOption);
    double cmResult =
        double.parse((convertedInput * 20116.8).toStringAsFixed(5));
    double dmResult =
        double.parse((convertedInput * 2011.68).toStringAsFixed(5));
    double mResult =
        double.parse((convertedInput * 201.168).toStringAsFixed(5));
    double kmResult =
        double.parse((convertedInput * 0.201168).toStringAsFixed(10));

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
