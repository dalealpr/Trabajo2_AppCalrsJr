import 'package:flutter/material.dart';
// Libreria Launcher URL
import 'package:url_launcher/url_launcher.dart';

class BienvenidaSection extends StatelessWidget {
  const BienvenidaSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Links
    final linkIngresar = Uri.parse('https://carlsjr.cl/app/');

    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            "assets/star.png",
            height: 24,
          ),
          const SizedBox(width: 7),
          const Text(
            "¡HOLA!",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 42),
          ),
          const SizedBox(width: 7),
          Image.asset(
            "assets/star.png",
            height: 24,
          ),
        ]),
        const Text(
          "Se parte de Carls Jr. Chile, acumula puntos",
          style: TextStyle(fontSize: 13),
        ),
        const Text("sube niveles y gana grandes beneficios",
            style: TextStyle(fontSize: 13)),
        Padding(
          padding: const EdgeInsets.only(top: 30.0, bottom: 30.0),
          child: Image.asset(
            "assets/starcarls.png",
            height: 115,
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 55,
          child: TextButton(
            onPressed: () =>
                launchUrl(linkIngresar, mode: LaunchMode.externalApplication),
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 229, 229, 229),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
            ),
            child: const Text(
              'Ingresar Ahora',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 11,
                  fontWeight: FontWeight.normal),
            ),
          ),
        ),
      ],
    );
  }
}
