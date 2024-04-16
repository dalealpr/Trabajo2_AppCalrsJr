import 'package:flutter/material.dart';
import 'package:carsljr_app_davidleal/widgets/widget.dart';

class DestacadosSection extends StatelessWidget {
  const DestacadosSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TitleHomeWidget(
          titleText: 'BURGUER DESTACADA',
        ),
        CardHomeWidget(
          imagePath: 'assets/home_godzillakong.jpg',
          buttonText: '¡CONÓCELAS!',
        )
      ],
    );
  }
}
