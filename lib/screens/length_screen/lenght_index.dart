import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/length_screen/chain_screen/chain_screen.dart';
import 'package:imperial_to_metric_flutter/screens/length_screen/foot_screen/foot_screen.dart';
import 'package:imperial_to_metric_flutter/screens/length_screen/furlong_screen/furlong_screen.dart';
import 'package:imperial_to_metric_flutter/screens/length_screen/inch_screen/inch_screen.dart';
import 'package:imperial_to_metric_flutter/screens/length_screen/league_screen/league_screen.dart';
import 'package:imperial_to_metric_flutter/screens/length_screen/link_screen/link_screen.dart';
import 'package:imperial_to_metric_flutter/screens/length_screen/mil_screen/mil_screen.dart';
import 'package:imperial_to_metric_flutter/screens/length_screen/mile_screen/mile_screen.dart';
import 'package:imperial_to_metric_flutter/screens/length_screen/rod_screen/rod_screen.dart';
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
        return RodScreen(rodInput: value);
      case 'Cadena':
        return ChainScreen(chainInput: value);
      case 'Furlong':
        return FurlongScreen(furlongInput: value);
      case 'Milla':
        return MileScreen(mileInput: value);
      case 'Legua':
        return LeagueScreen(leagueInput: value);
      case 'Link':
        return LinkScreen(linkInput: value);
      case 'Braza':
        return Text('option ==> $option');
      default:
        return const Text('Elige una opción');
    }
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
