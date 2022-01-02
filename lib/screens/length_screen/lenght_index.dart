import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/length_screen/foot_screen/foot_screen.dart';
import 'package:imperial_to_metric_flutter/screens/length_screen/inch_screen/inch_screen.dart';
import 'package:imperial_to_metric_flutter/screens/length_screen/mil_screen/mil_screen.dart';
import 'package:imperial_to_metric_flutter/screens/length_screen/yard_screen/yard_screen.dart';
import 'package:keyboard_actions/keyboard_actions.dart';

class LenghtScreen extends StatefulWidget {
  const LenghtScreen({Key? key}) : super(key: key);

  @override
  State<LenghtScreen> createState() => _LenghtScreenState();
}

class _LenghtScreenState extends State<LenghtScreen> {
  //* this variable holds the value of the selected DropdownButton
  String _currentOption = 'Elige una opción';
  String _inputValue = '';
  final FocusNode _focusInput = FocusNode();
  @override
  Widget build(BuildContext context) {
    return KeyboardActions(
      tapOutsideBehavior: TapOutsideBehavior.opaqueDismiss,
      config: KeyboardActionsConfig(
        keyboardActionsPlatform: KeyboardActionsPlatform.IOS,
        nextFocus: false,
        actions: [
          KeyboardActionsItem(
            focusNode: _focusInput,
          ),
        ],
      ),
      child: Column(
        children: [
          //*Input Field container
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Column(
                children: [
                  //* Input field
                  TextFormField(
                    focusNode: _focusInput,
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    onChanged: (inputValue) {
                      setState(() {
                        _inputValue = (inputValue).replaceAll(',', '.');
                      });
                      print('now I have as _inputValue ==> $inputValue');
                    },
                    validator: (inputValue) {
                      try {
                        if (inputValue == null) {
                          return 'Este campo es requerido';
                        }
                        return double.parse(inputValue) > 0
                            ? null
                            : 'El valor debe ser mayor a 0';
                      } catch (e) {
                        return 'El valor debe ser un número';
                      }
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      hintText: _currentOption == 'Elige una opción'
                          ? 'Selecciona una opción de la lista'
                          : 'Ingresa el valor en $_currentOption',
                    ),
                  ),
                ],
              ),
            ),
          ),

          //* Creating Dropdown
          Center(
            child: DropdownButton(
              hint: Text(_currentOption),
              //* List of items to convert
              items: <String>[
                "Mil",
                "Pulgadas",
                "Pie",
                "Yarda",
                "Rod",
                "Cadena",
                "Furlong",
                "Milla",
                "Legua",
                "Link",
                "Braza",
              ].map<DropdownMenuItem<String>>(
                (String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                },
              ).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _currentOption = newValue!;
                });
              },
            ),
          ),
          RenderOption(
            option: _currentOption,
            value: _inputValue,
          ),
        ],
      ),
    );
  }
}

class RenderOption extends StatelessWidget {
  final String option;
  final String value;
  const RenderOption({Key? key, required this.option, required this.value})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    switch (option) {
      case 'Mil':
        return MilScreen(milInput: value);
      case 'Pulgadas':
        return InchScreen(inchesInput: value);
      case 'Pie':
        return FootScreen(footInput: value);
      case 'Yarda':
        return YardScreen(yardInput: value);
      case 'Rod':
        return Container(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              const Text('Rod'),
              RodToMetric(rod: value),
            ],
          ),
        );
      case 'Cadena':
        return Text('option ==> $option');
      case 'Furlong':
        return Text('option ==> $option');
      case 'Milla':
        return Text('option ==> $option');
      case 'Legua':
        return Text('option ==> $option');
      case 'Link':
        return Text('option ==> $option');
      case 'Braza':
        return Text('option ==> $option');
      default:
        return const Text('Elige una opción');
    }
  }
}

//* Rod to metric
class RodToMetric extends StatefulWidget {
  final String rod;
  const RodToMetric({Key? key, required this.rod}) : super(key: key);

  @override
  _RodToMetricState createState() => _RodToMetricState();
}

class _RodToMetricState extends State<RodToMetric> {
  void _convertion(BuildContext context) {
    var inputOption = (widget.rod).replaceAll(',', '.');
    var convertedInput = double.parse(inputOption);
    double cmResult =
        double.parse((convertedInput * 502.92).toStringAsFixed(3));
    double dmResult =
        double.parse((convertedInput * 0.50292).toStringAsFixed(3));
    double mResult = double.parse((convertedInput * 5.0292).toStringAsFixed(3));
    double kmResult =
        double.parse((convertedInput * 0.0050292).toStringAsFixed(3));

    var alertDialog = AlertDialog(
      title: const Text('sus resultados'),
      content: Text('$cmResult cm\n$mResult m\n$dmResult dm\n$kmResult km'),
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

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      child: ElevatedButton(
        onPressed: () {
          _convertion(context);
        },
        child: const Text('Calcular'),
      ),
    );
  }
}

//* Chain to metric
class ChainToMetric extends StatefulWidget {
  String chain;
  ChainToMetric({Key? key, required this.chain}) : super(key: key);

  @override
  _ChainToMetricState createState() => _ChainToMetricState();
}

class _ChainToMetricState extends State<ChainToMetric> {
  void _convertion(BuildContext context) {
    var inputOption = (widget.chain).replaceAll(',', '.');
    var convertedInput = double.parse(inputOption);
    double cmResult =
        double.parse((convertedInput * 502.92).toStringAsFixed(3));
    double dmResult =
        double.parse((convertedInput * 0.50292).toStringAsFixed(3));
    double mResult = double.parse((convertedInput * 5.0292).toStringAsFixed(3));
    double kmResult =
        double.parse((convertedInput * 0.0050292).toStringAsFixed(3));

    var alertDialog = AlertDialog(
      title: const Text('sus resultados'),
      content: Text('$cmResult cm\n$mResult m\n$dmResult dm\n$kmResult km'),
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

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      child: ElevatedButton(
        onPressed: () {
          _convertion(context);
        },
        child: const Text('Calcular'),
      ),
    );
  }
}

//* Furlong to metric
class FurlongToMetric extends StatefulWidget {
  String furlong;
  FurlongToMetric({Key? key, required this.furlong}) : super(key: key);

  @override
  _FurlongToMetricState createState() => _FurlongToMetricState();
}

class _FurlongToMetricState extends State<FurlongToMetric> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

//* Mile to metric
class MileToMetric extends StatefulWidget {
  const MileToMetric({Key? key}) : super(key: key);

  @override
  _MileToMetricState createState() => _MileToMetricState();
}

class _MileToMetricState extends State<MileToMetric> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

//* League to metric
class LeagueToMetric extends StatefulWidget {
  const LeagueToMetric({Key? key}) : super(key: key);

  @override
  _LeagueToMetricState createState() => _LeagueToMetricState();
}

class _LeagueToMetricState extends State<LeagueToMetric> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

//* Link to metric
class LinkToMetric extends StatefulWidget {
  const LinkToMetric({Key? key}) : super(key: key);

  @override
  _LinkToMetricState createState() => _LinkToMetricState();
}

class _LinkToMetricState extends State<LinkToMetric> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

//* Fathom to metric
class FathomToMetric extends StatefulWidget {
  const FathomToMetric({Key? key}) : super(key: key);

  @override
  _FathomToMetricState createState() => _FathomToMetricState();
}

class _FathomToMetricState extends State<FathomToMetric> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
