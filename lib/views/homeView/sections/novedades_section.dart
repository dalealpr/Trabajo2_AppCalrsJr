import 'package:carsljr_app_davidleal/widgets/widget.dart';
import 'package:flutter/material.dart';
import '../../../widgets/cardhome_widget.dart';

class NovedadesSection extends StatelessWidget {
  const NovedadesSection({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TitleHomeWidget(titleText: "NOVEDADES"),
        CardHomeWidget(
          imagePath: 'assets/home_semama.jpg',
          buttonText: 'COMPRAR',
        )
      ],
    );
  }
}
