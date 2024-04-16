import 'package:flutter/material.dart';
// Libreria Launcher URL
import 'package:url_launcher/url_launcher.dart';

class CardSucursalesWidget extends StatelessWidget {
  final String sucursal;
  final String direccion;
  final String comuna;
  final String telefono;
  final String distancia;
  final String img;
  final String url;

  const CardSucursalesWidget(
      {super.key,
      required this.sucursal,
      required this.direccion,
      required this.comuna,
      required this.telefono,
      required this.distancia,
      required this.img,
      required this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2, bottom: 2),
      child: GestureDetector(
        onTap: () =>
            launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication),
        child: Container(
          color:
              const Color.fromARGB(255, 211, 211, 211), // Color de fondo gris
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: Image.asset(
                  img,
                  fit: BoxFit.cover,
                  width: 120,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        sucursal,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            size: 18,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            direccion,
                            style: const TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 23),
                          Text(
                            comuna,
                            style: const TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          const Icon(
                            Icons.phone,
                            size: 18,
                          ),
                          const SizedBox(width: 4),
                          Text(telefono, style: const TextStyle(fontSize: 13)),
                        ],
                      ),
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Icon(Icons.location_on, size: 15),
                          const SizedBox(width: 4),
                          Text(distancia, style: const TextStyle(fontSize: 11)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
