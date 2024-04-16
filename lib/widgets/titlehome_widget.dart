import 'package:flutter/material.dart';

class TitleHomeWidget extends StatelessWidget {
  final String titleText;

  const TitleHomeWidget({
    super.key,
    required this.titleText,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(children: [
          Image.asset(
            "assets/star.png",
            height: 34,
          ),
          Transform.translate(
              offset: const Offset(-30, 0),
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text(
                  titleText, // Parametro de entrada String (titulo)
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
              )),
        ])
      ],
    );
  }
}
