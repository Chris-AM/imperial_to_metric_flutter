import 'package:flutter/material.dart';

class LenghtScreen extends StatefulWidget {
  const LenghtScreen({Key? key}) : super(key: key);

  @override
  State<LenghtScreen> createState() => _LenghtScreenState();
}

class _LenghtScreenState extends State<LenghtScreen> {
  //* this variable holds the value of the selected DropdownButton
  String _currentOption = 'Elije una opción';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //* Message
        const Text(
          'Elige la unidad a la que quieres convertir',
          style: TextStyle(fontSize: 20),
        ),
        Center(
          //* Creating Dropdown
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
        RenderOption(option: _currentOption),
      ],
    );
  }
}

class RenderOption extends StatelessWidget {
  final String option;
  const RenderOption({Key? key, required this.option}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (option) {
      case 'mil':
        print('option selected: mil in switch');
        return Text('option ==> $option');
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
