import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/helpers/error_dialog.dart';

class CubicMileToMetric extends StatefulWidget {
  final String cubicMile;
  const CubicMileToMetric({Key? key, required this.cubicMile})
      : super(key: key);

  @override
  _CubicMileToMetricState createState() => _CubicMileToMetricState();
}

class _CubicMileToMetricState extends State<CubicMileToMetric> {
  //* Converion Logic
  void _convertion(BuildContext context) {
    var inputOption = widget.cubicMile;
    var convertedInput = double.parse(inputOption);
    String mmCb =
        (convertedInput * 4168181825440539600).toStringAsExponential();
    double cmCb =
        double.parse((convertedInput * 4168181825440540).toStringAsFixed(5));
    double mCb =
        double.parse((convertedInput * 4168181825.4).toStringAsFixed(5));
    double litre =
        double.parse((convertedInput * 4168181825441).toStringAsFixed(5));
    double kmCb =
        double.parse((convertedInput * 4.1681818254).toStringAsFixed(10));

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
