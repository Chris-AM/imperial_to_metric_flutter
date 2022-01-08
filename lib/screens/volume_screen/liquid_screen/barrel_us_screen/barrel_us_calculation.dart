import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/helpers/error_dialog.dart';

class BarrelUSToMetric extends StatefulWidget {
  final String barrelUS;
  const BarrelUSToMetric({Key? key, required this.barrelUS}) : super(key: key);

  @override
  _BarrelUSToMetricState createState() => _BarrelUSToMetricState();
}

class _BarrelUSToMetricState extends State<BarrelUSToMetric> {
  //* Converion Logic
  void _convertion(BuildContext context) {
    var inputOption = widget.barrelUS;
    var convertedInput = double.parse(inputOption);
    double mmCb =
        double.parse((convertedInput * 119240471.2).toStringAsFixed(5));
    double cmCb =
        double.parse((convertedInput * 119240.4712).toStringAsFixed(5));
    double mCb =
        double.parse((convertedInput * 0.1192404712).toStringAsFixed(5));
    double litre =
        double.parse((convertedInput * 119.2404712).toStringAsFixed(5));
    double kmCb =
        double.parse((convertedInput * 1.192404711e-10).toStringAsFixed(20));

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
