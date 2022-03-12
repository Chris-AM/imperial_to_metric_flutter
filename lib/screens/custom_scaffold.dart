import 'package:flutter/material.dart';

import 'package:calculadora_imp_met/screens/home_screen.dart';
import 'package:calculadora_imp_met/screens/length_screen/lenght_index.dart';
import 'package:calculadora_imp_met/screens/mass_screen/mass_index.dart';
import 'package:calculadora_imp_met/screens/surface.screen/surface_index.dart';
import 'package:calculadora_imp_met/screens/temperature_screen/temperature_screen.dart';
import 'package:calculadora_imp_met/screens/volume_screen/volume_index.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        title: currentPage == 0
            ? const Text('Home')
            : currentPage == 1
                ? const Text('Longitud')
                : currentPage == 2
                    ? const Text('Masa')
                    : currentPage == 3
                        ? const Text('Superficie')
                        : currentPage == 4
                            ? const Text('Volumen')
                            : const Text('Temperatura'),
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
          const LenghtScreen(),
          //*Mass
          const MassScreen(),
          //*surface
          const SurfaceScreen(),
          //*volume
          const VolumeScreen(),
          //*temperature
          const TemperatureScreen(),
        ],
      ),

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
            icon: FaIcon(FontAwesomeIcons.ruler),
            label: 'Longitud',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.dumbbell),
            label: 'Masa',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.rulerCombined),
            label: 'Superficie',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.water),
            label: 'Volumen',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.thermometerHalf),
            label: 'Temperatura',
          ),
        ],
      ),
    );
  }
}
