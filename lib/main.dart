import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'detalles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const List<Map<String, dynamic>> items = [
    {
      'title': 'Perro',
      'image': 'assets/images/perro.png',
      'description': 'Un perro es un animal doméstico y leal.',
      'titleStyle': TextStyle(fontSize: 20, fontFamily: 'RobotoMono'),
      'descriptionStyle': TextStyle(fontSize: 16, fontFamily: 'RobotoMono'),
      'isSvg': false,
    },
    {
      'title': 'Gato',
      'image': 'assets/images/gato.jpg',
      'description': 'Un gato es un animal independiente y curioso.',
      'titleStyle': TextStyle(fontSize: 20, fontFamily: 'PoetsenOne'),
      'descriptionStyle': TextStyle(fontSize: 16, fontFamily: 'PoetsenOne'),
      'isSvg': false,
    },
    {
      'title': 'Loro',
      'image': 'assets/images/loro.svg',
      'description': 'Un loro es un ave colorida y parlante.',
      'titleStyle': TextStyle(fontSize: 20, fontFamily: 'BebasNeue'),
      'descriptionStyle': TextStyle(fontSize: 16, fontFamily: 'BebasNeue'),
      'isSvg': true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ejercicio 1'),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return ListTile(
              leading: item['isSvg']
                  ? SvgPicture.asset(
                      item['image']!,
                      width: 50,
                      height: 50,
                    )
                  : Image.asset(
                      item['image']!,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
              title: Text(
                item['title']!,
                style: item['titleStyle'],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetallesScreen(
                      title: item['title']!,
                      image: item['image']!,
                      description: item['description']!,
                      titleStyle: item['titleStyle'],
                      descriptionStyle: item['descriptionStyle'],
                      isSvg: item['isSvg'],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
