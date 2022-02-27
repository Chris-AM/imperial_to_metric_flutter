import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/screens/custom_scaffold.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: CustomScaffold(),
    );
  }
}
