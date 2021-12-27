import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          children:  <Widget>[
            const CustomScreen(color: Colors.deepPurple),
            CustomScreen2(),
            const CustomScreen(color: Colors.red),
          ]),

      //* Tabs
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (int index) {
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
          setState(() {
            currentPage = index;
          });
        },
        backgroundColor: Colors.blueGrey,
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
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class CustomScreen extends StatelessWidget {
  final Color color;
  const CustomScreen({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: const Center(
        child: Text('Custom screen'),
      ),
    );
  }
}


class CustomScreen2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: const Center(
        child: Text('Custom screen 2'),
      ),
    );
  }
}