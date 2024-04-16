import 'package:carsljr_app_davidleal/views/comprarView/comprar_view.dart';
import 'package:carsljr_app_davidleal/views/homeView/home_view.dart';
import 'package:carsljr_app_davidleal/views/sucursalesView/sucursales_view.dart';
import 'package:carsljr_app_davidleal/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIdex = 0;
  @override
  Widget build(BuildContext context) {
    // Color
    const yellowColor = Color(0xFFFFC72C);
    final views = [
      const HomeView(),
      const ComprarView(),
      const SucursalesView()
    ];

    return Scaffold(
      drawer: const Drawer(child: DrawerWidget()),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: yellowColor), //
        toolbarHeight: 45,
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logonav.jpg', // Ruta de la imagen
              height: 32, // Altura de la imagen
              // Opcional: puedes ajustar el ancho, el ajuste, etc., según tus necesidades
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.person,
              color: yellowColor,
              size: 35,
            ),
            onPressed: () {
              Navigator.pushNamed(context, 'profile');
            },
          ),
        ],
      ),
      // VIEWS
      body: IndexedStack(
        index: selectedIdex,
        children: views,
      ),

      // BOTTOM-NAV
      bottomNavigationBar: BottomNavigationBar(
        onTap: (newIndex) {
          setState(() {
            selectedIdex = newIndex;
          });
        },
        selectedItemColor: yellowColor,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        currentIndex: selectedIdex,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Comprar',
            icon: Icon(Icons.store),
          ),
          BottomNavigationBarItem(
            label: 'Sucursales',
            icon: Icon(Icons.location_on),
          ),
        ],
      ),
    );
  }
}
