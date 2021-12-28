import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LenghtScreen extends StatefulWidget {
  const LenghtScreen({Key? key}) : super(key: key);

  @override
  State<LenghtScreen> createState() => _LenghtScreenState();
}

class _LenghtScreenState extends State<LenghtScreen> {
  //* this variable holds the value of the selected DropdownButton
  String _currentOption = 'Elije una opción';
  String _inputValue = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //*Input Field container
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                //* Input field
                TextFormField(
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  onChanged: (inputValue) {
                    setState(() {
                      _inputValue = inputValue;
                    });
                    print('now I have as _inputValue ==> $inputValue');
                  },
                  validator: (inputValue) {
                    try {
                      if (inputValue == null) return 'Este campo es requerido';
                      return double.parse(inputValue) > 0
                          ? null
                          : 'El valor debe ser mayor a 0';
                    } catch (e) {
                      return 'El valor debe ser un número';
                    }
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    hintText: _currentOption == 'Elije una opción'
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
              "mil",
              "pulgadas",
              "Pie",
              "Yarda",
              "Rood",
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
              print('option selected: $_currentOption');
            },
          ),
        ),
        RenderOption(
          option: _currentOption,
          value: _inputValue,
        ),
      ],
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
      case 'mil':
        print('option selected: mil in switch');
        print('value: $value');
        return Container(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: const [
              Text('Mil'),
              Text('1 mil = 0.000254 pulgadas'),
              Text('1 mil = 0.0000254 pie'),
              Text('1 mil = 0.000621371 yarda'),
              Text('1 mil = 0.000000621371 rood'),
            ],
          ),
        );
      case 'pulgadas':
        return Text('option ==> $option');
      case 'Pie':
        return Text('option ==> $option');
      case 'Yarda':
        return Text('option ==> $option');
      case 'Rood':
        return Text('option ==> $option');
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
