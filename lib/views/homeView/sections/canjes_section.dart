import 'package:carsljr_app_davidleal/widgets/widget.dart';
import 'package:flutter/material.dart';
// Libreria Launcher URL
import 'package:url_launcher/url_launcher.dart';

class CanjesSection extends StatefulWidget {
  const CanjesSection({super.key});

  @override
  State<CanjesSection> createState() => _CanjesSectionState();
}

class _CanjesSectionState extends State<CanjesSection> {
  // Link
  final linkCompartir = Uri.parse('https://carlsjr.cl/');
  // Lista para Salsas Card
  List<Map<String, dynamic>> dataCanjes = [
    {
      'img': 'assets/salsa_ketchup.jpg',
      'title': 'Salsa BBQ',
      'points': '100',
    },
    {
      'img': 'assets/salsa_ranch.jpg',
      'title': 'Salsa Ranch',
      'points': '150',
    },
    {
      'img': 'assets/salsa_queso.jpg',
      'title': 'Salsa Honey',
      'points': '200',
    },
  ];
  @override
  Widget build(BuildContext context) {
    const yellowColor = Color.fromARGB(255, 244, 179, 0);
    return Column(
      children: [
        const TitleHomeWidget(titleText: "CANJES DISPONIBLES"),
        Padding(
            padding: const EdgeInsets.only(top: 27.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 222, 222, 222),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(children: [
                    const Text("Acumula puntos para obtener recompensas"),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // map Cards Salsas
                        ...dataCanjes.map((canje) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                canje['img'],
                                width: 90,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                canje['title'],
                                style: const TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    canje['points'],
                                    style: const TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: yellowColor),
                                  ),
                                  const Text(
                                    ' Puntos',
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          );
                        })
                      ],
                    )
                  ])),
            )),
        const Padding(
          padding: EdgeInsets.only(top: 22.0, bottom: 10.0),
          child: Column(
            children: [
              Text(
                "¿No sabes que hacer con tus puntos ?",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "¡COMPÁRTE CON TUS AMIGOS!",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),
        ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: SizedBox.fromSize(
              size: const Size(150, 38),
              child: Material(
                color: const Color.fromARGB(255, 255, 9, 46),
                child: InkWell(
                  onTap: () => launchUrl(linkCompartir,
                      mode: LaunchMode.externalApplication),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Compartir",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(width: 5),
                      Icon(Icons.card_giftcard_rounded, color: Colors.white),
                    ],
                  ),
                ),
              ),
            )),
      ],
    );
  }
}
