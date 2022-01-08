import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/helpers/error_dialog.dart';

class CubicFootToMetric extends StatefulWidget {
  final String cubicFoot;
  const CubicFootToMetric({Key? key, required this.cubicFoot})
      : super(key: key);

  @override
  _CubicFootToMetricState createState() => _CubicFootToMetricState();
}

class _CubicFootToMetricState extends State<CubicFootToMetric> {
  //* Converion Logic
  void _convertion(BuildContext context) {
    var inputOption = widget.cubicFoot;
    var convertedInput = double.parse(inputOption);
    double mmCb =
        double.parse((convertedInput * 28316846.592).toStringAsFixed(5));
    double cmCb =
        double.parse((convertedInput * 28316.846592).toStringAsFixed(5));
    double mCb =
        double.parse((convertedInput * 0.0283168466).toStringAsFixed(5));
    double litre =
        double.parse((convertedInput * 28.316846592).toStringAsFixed(5));
    double kmCb =
        double.parse((convertedInput * 2.831684659e-11).toStringAsFixed(15));

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
        ),
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
