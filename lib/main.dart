import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// Routes
import './routes/app_routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(255, 61, 61, 61),
      systemNavigationBarColor: Color.fromARGB(255, 234, 234, 234),
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: Color.fromARGB(0, 238, 238, 238),
    ));
    return MaterialApp(
        debugShowCheckedModeBanner: false, //Quita etiqueta debug
        title: 'Carls Jr App',
        initialRoute: AppRoutes.initialRoute, //Ruta inicial
        routes: AppRoutes.routes, //Rutas
        onGenerateRoute: AppRoutes.onGenerateRoute, //Genera las rutas
        //Theme (Archivo de temas, estilos)
        theme: ThemeData(
          primaryColor: Colors.black, // Color de fondo del AppBar
          iconTheme: const IconThemeData(
              color: Color(0xFFFFC72C)), // Color de los iconos
          listTileTheme: const ListTileThemeData(iconColor: Color(0xFFFFC72C)),
        ));
  }
}
