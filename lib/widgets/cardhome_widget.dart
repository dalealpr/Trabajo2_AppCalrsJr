import 'package:flutter/material.dart';
// Libreria Launcher URL
import 'package:url_launcher/url_launcher.dart';

class CardHomeWidget extends StatelessWidget {
  final String imagePath;
  final String buttonText;

  const CardHomeWidget({
    super.key,
    required this.imagePath,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    // Color
    const yellowColor = Color(0xFFFFC72C);
    // Link
    final linkGodzillaKong = Uri.parse('https://carlsjr.cl/menu/');

    return Center(
        child: Stack(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 27.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  imagePath, // Parametro de entrada String (img)
                ),
              ),
            ),

            // BOTON
            Transform.translate(
                offset: const Offset(0, -25),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    border: Border.all(
                      color: yellowColor,
                      width: 3,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    child: SizedBox(
                      height: 40,
                      child: TextButton(
                        onPressed: () => launchUrl(linkGodzillaKong,
                            mode: LaunchMode.externalApplication),
                        style: TextButton.styleFrom(
                          backgroundColor: yellowColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text(
                          buttonText, //Parametro de entrada String (Texto Btn)
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
          ],
        )
      ],
    ));
  }
}
