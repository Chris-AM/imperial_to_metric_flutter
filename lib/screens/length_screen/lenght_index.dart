import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/screens/length_screen/length.dart';
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
                "Braza (US)",
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
            inputValue: _inputValue,
          ),
        ],
      ),
    );
  }
}

class RenderOption extends StatelessWidget {
  final String option;
  final String inputValue;
  const RenderOption({Key? key, required this.option, required this.inputValue})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    switch (option) {
      case 'Mil':
        return MilScreen(milInput: inputValue);
      case 'Pulgadas':
        return InchScreen(inchesInput: inputValue);
      case 'Pie':
        return FootScreen(footInput: inputValue);
      case 'Yarda':
        return YardScreen(yardInput: inputValue);
      case 'Rod':
        return RodScreen(rodInput: inputValue);
      case 'Cadena':
        return ChainScreen(chainInput: inputValue);
      case 'Furlong':
        return FurlongScreen(furlongInput: inputValue);
      case 'Milla':
        return MileScreen(mileInput: inputValue);
      case 'Legua':
        return LeagueScreen(leagueInput: inputValue);
      case 'Link':
        return LinkScreen(linkInput: inputValue);
      case 'Braza (US)':
        return FathomScreen(fathomInput: inputValue);
      default:
        return const Text('Elige una opción');
    }
  }
}
