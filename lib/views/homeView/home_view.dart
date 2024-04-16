import 'package:carsljr_app_davidleal/views/homeView/sections/canjes_section.dart';
import 'package:carsljr_app_davidleal/views/homeView/sections/destacados_section.dart';
import 'package:carsljr_app_davidleal/views/homeView/sections/novedades_section.dart';
import 'package:flutter/material.dart';
import 'sections/sections.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // Variables

    return const SingleChildScrollView(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Seccion 1
              BienvenidaSection(),
              SizedBox(height: 35),
              // Seccion 2
              DestacadosSection(),
              SizedBox(height: 35),
              // Seccion 3
              NovedadesSection(),
              SizedBox(height: 35),
              // Seccion 4
              CanjesSection(),
              SizedBox(height: 20),
            ],
          ),
        )
      ],
    ));
  }
}
