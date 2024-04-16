import 'package:carsljr_app_davidleal/widgets/cardsucursales_widget.dart';
import 'package:flutter/material.dart';
import '../../widgets/widget.dart';

class SucursalesView extends StatefulWidget {
  const SucursalesView({super.key});

  @override
  State<SucursalesView> createState() => _SucursalesViewState();
}

class _SucursalesViewState extends State<SucursalesView> {
  // Lista para Salsas Card
  List<Map<String, dynamic>> dataSucursales = [
    {
      'sucursal': 'Rosario Norte',
      'direccion': 'Rosario Norte 100',
      'comuna': 'Las Condes',
      'telefono': '932670470',
      'distancia': '0.7Km',
      'img': 'assets/local_rosarionorte.jpg',
      'url':
          'https://www.google.com/maps/place/Rosario+Nte+100,+7561258+Las+Condes,+Regi%C3%B3n+Metropolitana,+Chile/@-33.407691,-70.571731,14z/data=!4m6!3m5!1s0x9662cedf19aa3033:0x4578828434facee3!8m2!3d-33.4076908!4d-70.5717314!16s%2Fg%2F11fm9twh73?hl=es-ES&entry=ttu',
    },
    {
      'sucursal': 'Mall Arauco Maipu',
      'direccion': 'Vespucio 1501',
      'comuna': 'Cerrillos',
      'telefono': '933592672',
      'distancia': '17Km',
      'img': 'assets/local_maipu.jpg',
      'url':
          'https://www.google.com/maps/place/Av.+Am%C3%A9rico+Vespucio+399,+9250000+Maip%C3%BA,+Regi%C3%B3n+Metropolitana,+Chile/@-33.483019,-70.749603,14z/data=!4m6!3m5!1s0x9662c317d35258bd:0x30ecdc04910e29de!8m2!3d-33.4830191!4d-70.7496028!16s%2Fg%2F11gm_glksy?hl=es-ES&entry=ttu',
    },
    {
      'sucursal': 'Vitacura',
      'direccion': 'Av Vitacura 2751',
      'comuna': 'Vitacura',
      'telefono': '942928151',
      'distancia': '2.5Km',
      'img': 'assets/local_vitacura.jpg',
      'url':
          'https://www.google.com/maps?ll=-33.415224,-70.603714&z=14&t=m&hl=es-ES&gl=US&mapclient=embed&q=Av+Vitacura+2751,+Local+2+7550134+Vitacura,+Las+Condes+Regi%C3%B3n+Metropolitana',
    },
    {
      'sucursal': 'Providencia',
      'direccion': 'Nueva Providencia 2124',
      'comuna': 'Providencia',
      'telefono': '958711236',
      'distancia': '3.3Km',
      'img': 'assets/local_providencia.jpg',
      'url':
          'https://www.google.com/maps/place/Av.+Nueva+Providencia+2124,+7510118+Providencia,+Regi%C3%B3n+Metropolitana,+Chile/@-33.423138,-70.610505,14z/data=!4m6!3m5!1s0x9662cf65fd0e8cd7:0x927b2c65a0c60729!8m2!3d-33.4231384!4d-70.6105046!16s%2Fg%2F11d_tx72t0?hl=es-ES&entry=ttu',
    },
    {
      'sucursal': 'Los Trapenses',
      'direccion': 'Los Trapenses 2140',
      'comuna': 'Lo Barnechea',
      'telefono': '958711236',
      'distancia': '7.2Km',
      'img': 'assets/local_trapenses.jpg',
      'url':
          'https://www.google.com/maps?ll=-33.355515,-70.539926&z=14&t=m&hl=es-ES&gl=US&mapclient=embed&q=Cam.+Los+Trapenses+2140+7710427+Lo+Barnechea+Regi%C3%B3n+Metropolitana',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          child: TextField(),
        ),
        Column(
          children: dataSucursales
              .map((sucursal) => CardSucursalesWidget(
                  sucursal: sucursal['sucursal'],
                  direccion: sucursal['direccion'],
                  comuna: sucursal['comuna'],
                  telefono: sucursal['telefono'],
                  distancia: sucursal['distancia'],
                  img: sucursal['img'],
                  url: sucursal['url']))
              .toList(),
        )
      ],
    ));
  }
}
