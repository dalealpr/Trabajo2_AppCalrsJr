import 'package:flutter/material.dart';
// Libreria Launcher URL
import 'package:url_launcher/url_launcher.dart';

class ComprarView extends StatefulWidget {
  const ComprarView({super.key});

  @override
  State<ComprarView> createState() => _ComprarViewState();
}

class _ComprarViewState extends State<ComprarView> {
  @override
  Widget build(BuildContext context) {
    // Color
    const yellowColor = Color.fromARGB(255, 240, 186, 36);
// Initial Selected Value
    String dropdownvalue = 'Rosario Norte';
    final linkOrdenar = Uri.parse(
        'https://ordering.como.com/es/onlineorder/carlsjrchile#/onlineorder');

    // List of items in our dropdown menu
    var itemsList = [
      'Rosario Norte',
      'Mall Arauco Maipu',
      'Vitacura',
      'Providencia',
      'Los Trapenses',
    ];

    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/background_comprar.jpg',
          fit: BoxFit.cover,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
              child: Container(
                height: 450,
                decoration: BoxDecoration(
                  color: yellowColor,
                  borderRadius: BorderRadius.circular(7), // Radio de borde
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 30.0, left: 18.0, right: 18.0),
                  child: Column(
                    children: [
                      const Text(
                        "BIENVENIDO A CALRS JR CHILE",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 16),
                      ),
                      const SizedBox(height: 25),
                      // Contenedor Btns
                      Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Wrap(
                            children: [
                              ClipRRect(
                                  borderRadius:
                                      const BorderRadiusDirectional.only(
                                    topStart: Radius.circular(4),
                                    bottomStart: Radius.circular(4),
                                  ),
                                  child: SizedBox.fromSize(
                                    size: const Size(110, 30),
                                    child: Material(
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                      child: InkWell(
                                        onTap: () {},
                                        child: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              "Pide y Retira",
                                              style: TextStyle(
                                                  color: yellowColor,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                            SizedBox(width: 5),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )),
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(4),
                                  child: SizedBox.fromSize(
                                    size: const Size(110, 30),
                                    child: Material(
                                      color: yellowColor,
                                      child: InkWell(
                                        onTap: () {},
                                        child: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              "A Domicilio",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                            SizedBox(width: 5),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )),
                            ],
                          )),
                      const SizedBox(height: 25),
                      Container(
                        width: 225,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            border: const Border(bottom: BorderSide.none),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: SizedBox(
                            height: 40,
                            child: DropdownButtonFormField(
                              value: dropdownvalue,
                              items: itemsList
                                  .map((item) => DropdownMenuItem(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ))
                                  .toList(),
                              onChanged: (value) => setState(
                                  () => dropdownvalue = value.toString()),
                            )),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                      ),
                      const Column(
                        children: [
                          Text(
                            "Cantidad minima de la orden: 2000 CLP ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Monto maximo permitido: 150,000 CLP ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Entrega estimada: 15 minutos",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const SizedBox(height: 25),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: SizedBox.fromSize(
                            size: const Size(110, 30),
                            child: Material(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              child: InkWell(
                                onTap: () => launchUrl(linkOrdenar,
                                    mode: LaunchMode.externalApplication),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "CONTINUAR",
                                      style: TextStyle(
                                          color: yellowColor,
                                          fontSize: 11,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    SizedBox(width: 5),
                                  ],
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
