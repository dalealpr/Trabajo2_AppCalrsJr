import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // Links
    final websiteUri = Uri.parse('https://carlsjr.cl/terminos-y-condiciones/');

    const yellowColor = Color(0xFFFFC72C);
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 45,
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: yellowColor,
              size: 32,
            ),
            onPressed: () {
              Navigator.pushNamed(context, 'home');
            },
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logonav.jpg', // Ruta de la imagen
                height: 32, // Altura de la imagen
                // Opcional: puedes ajustar el ancho, el ajuste, etc., según tus necesidades
              ),
            ],
          ),
          actions: [
            const SizedBox(width: 65),
          ],
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
          child: Column(
            children: [
              Image.asset(
                'assets/perfil_img.png', // Ruta de la imagen
                height: 120, // Altura de la imagen
                // Opcional: puedes ajustar el ancho, el ajuste, etc., según tus necesidades
              ),
              const SizedBox(height: 20),
              const Text(
                "David Leal",
                style: TextStyle(fontSize: 22),
              ),
              const Text("912345678", style: TextStyle(fontSize: 15)),
              const SizedBox(height: 20),
              TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: yellowColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Text(
                      " Actualizar", //Parametro de entrada String (Texto Btn)
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.fingerprint,
                          color: yellowColor,
                          size: 50,
                        ),
                        onPressed: () {},
                      ),
                      const Text("ID Usuario")
                    ],
                  ),
                  const SizedBox(width: 40),
                  Column(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.inbox,
                          color: yellowColor,
                          size: 50,
                        ),
                        onPressed: () {},
                      ),
                      const Text("Inbox")
                    ],
                  ),
                  const SizedBox(width: 40),
                  Column(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.newspaper,
                          color: yellowColor,
                          size: 50,
                        ),
                        onPressed: () {},
                      ),
                      const Text("Mi Actividad")
                    ],
                  )
                ],
              ),
              const SizedBox(height: 30),
              TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: yellowColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Text(
                      " Cerrar Sesión", //Parametro de entrada String (Texto Btn)
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )),
              const SizedBox(height: 10),
              Center(
                child: InkWell(
                    child: const Text('Terminos y condiciones'),
                    onTap: () => launchUrl(websiteUri,
                        mode: LaunchMode.externalApplication)),
              ),
            ],
          ),
        )));
  }
}
