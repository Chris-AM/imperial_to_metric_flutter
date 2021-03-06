import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/helpers/error_dialog.dart';

class QuartUKToMetric extends StatefulWidget {
  final String quartUk;
  const QuartUKToMetric({Key? key, required this.quartUk}) : super(key: key);

  @override
  _QuartUKToMetricState createState() => _QuartUKToMetricState();
}

class _QuartUKToMetricState extends State<QuartUKToMetric> {
  //* Converion Logic
  void _convertion(BuildContext context) {
    var inputOption = widget.quartUk;
    var convertedInput = double.parse(inputOption);
    double mmCb = double.parse((convertedInput * 1136522.5).toStringAsFixed(5));
    double cmCb = double.parse((convertedInput * 1136.5225).toStringAsFixed(5));
    double mCb =
        double.parse((convertedInput * 0.0011365225).toStringAsFixed(5));
    double litre =
        double.parse((convertedInput * 1.1365225).toStringAsFixed(5));
    double kmCb =
        double.parse((convertedInput * 1.1365225e-12).toStringAsFixed(20));

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
