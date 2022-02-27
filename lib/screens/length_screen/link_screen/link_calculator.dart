import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/helpers/error_dialog.dart';

//* Link to metric
class LinkToMetric extends StatefulWidget {
  final String link;
  const LinkToMetric({Key? key, required this.link}) : super(key: key);

  @override
  _LinkToMetricState createState() => _LinkToMetricState();
}

class _LinkToMetricState extends State<LinkToMetric> {
  void _convertion(BuildContext context) {
    var inputOption = widget.link;
    var convertedInput = double.parse(inputOption);
    double cmResult =
        double.parse((convertedInput * 20.1168).toStringAsFixed(5));
    double dmResult =
        double.parse((convertedInput * 2.01168).toStringAsFixed(5));
    double mResult =
        double.parse((convertedInput * 0.201168).toStringAsFixed(5));
    double kmResult =
        double.parse((convertedInput * 0.000201168).toStringAsFixed(10));

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
