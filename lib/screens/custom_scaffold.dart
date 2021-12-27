import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/conversors/lenght.dart';
import 'package:imperial_to_metric_flutter/screens/conversors/mass.dart';
import 'package:imperial_to_metric_flutter/screens/conversors/surface.dart';
import 'package:imperial_to_metric_flutter/screens/conversors/temperature.dart';
import 'package:imperial_to_metric_flutter/screens/conversors/volume.dart';
import 'package:imperial_to_metric_flutter/screens/home_screen.dart';

class CustomScaffold extends StatefulWidget {
  const CustomScaffold({Key? key}) : super(key: key);

  @override
  State<CustomScaffold> createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold> {
  int currentPage = 0;

  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //* Appbar
      appBar: AppBar(
        title: Text('Material App Bar $currentPage'),
        elevation: 0,
      ),

      //* Body

      body: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: <Widget>[
            //*home
            HomeScreen(),
            //*Lenght
            const LenghtScreen(color: Colors.red),
            //*Mass
            MassScreen(),
            //*surface
            SurfaceScreen(),
            //*volume
            VolumeScreen(),
            //*temperature
            TemperatureScreen(),
          ]),

      //* Tabs
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (int index) {
          _pageController.jumpToPage(index);
          setState(() {
            currentPage = index;
          });
        },
        //*style
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        unselectedFontSize: 10,
        fixedColor: Colors.white,
        selectedIconTheme: const IconThemeData(color: Colors.white),
        unselectedIconTheme:
            IconThemeData(color: Colors.white.withOpacity(0.5)),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Longitud',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Masa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Superficie',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Volumen',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Temperatura',
          ),
        ],
      ),
    );
  }
}
