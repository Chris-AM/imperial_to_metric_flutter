import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/custom_scaffold.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: CustomScaffold(),
      );
  }
  
}