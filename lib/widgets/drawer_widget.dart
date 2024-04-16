import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});
  @override
  Widget build(BuildContext context) {
    // Color
    const yellowColor = Color(0xFFFFC72C);
    return Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 25.0, right: 10.0),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                IconButton(
                  icon: const Icon(
                    Icons.close,
                    size: 35,
                  ), // Icono de salida
                  onPressed: () {
                    // Acción al hacer clic en el botón de salida
                    Navigator.pop(context); // Cerrar el Drawer
                    // Aquí puedes agregar la lógica para salir de la aplicación
                  },
                ),
              ]),
              const SizedBox(height: 20),
              const Row(children: [
                Icon(
                  Icons.home,
                  color: yellowColor,
                  size: 35,
                ),
                SizedBox(width: 12),
                Text(
                  "Home",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                )
              ]),
              const SizedBox(height: 35),
              const Row(children: [
                Icon(
                  Icons.store,
                  color: yellowColor,
                  size: 35,
                ),
                SizedBox(width: 12),
                Text(
                  "Comprar",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                )
              ]),
              const SizedBox(height: 35),
              const Row(children: [
                Icon(
                  Icons.star,
                  color: yellowColor,
                  size: 35,
                ),
                SizedBox(width: 12),
                Text(
                  "Beneficios",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                )
              ]),
              const SizedBox(height: 35),
              const Row(children: [
                Icon(
                  Icons.local_activity,
                  color: yellowColor,
                  size: 35,
                ),
                SizedBox(width: 12),
                Text(
                  "Cupones",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                )
              ]),
              const SizedBox(height: 35),
              const Row(children: [
                Icon(
                  Icons.location_on,
                  color: yellowColor,
                  size: 35,
                ),
                SizedBox(width: 12),
                Text(
                  "Sucursales",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                )
              ]),
              const SizedBox(height: 35),
              const Row(children: [
                Icon(
                  Icons.contact_support,
                  color: yellowColor,
                  size: 35,
                ),
                SizedBox(width: 12),
                Text(
                  "Contacto",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                )
              ]),
            ],
          ),
        ));
  }
}
