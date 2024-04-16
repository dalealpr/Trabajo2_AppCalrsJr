import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({
    Key? key,
  }) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  final List<Widget> _body = const [
    Icon(Icons.home),
    Icon(Icons.menu),
    Icon(Icons.person),
    Icon(Icons.person),
    Icon(Icons.map),
  ];

  @override
  Widget build(BuildContext context) {
    const yellowColor = Color(0xFFFFC72C);
    return Scaffold(
      body: Center(
        child: _body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: yellowColor,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Comprar',
            icon: Icon(Icons.menu),
          ),
          BottomNavigationBarItem(
            label: 'Sucursales',
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
