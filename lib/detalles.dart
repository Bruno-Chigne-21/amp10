import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetallesScreen extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  final TextStyle titleStyle;
  final TextStyle descriptionStyle;
  final bool isSvg;

  const DetallesScreen({
    Key? key,
    required this.title,
    required this.image,
    required this.description,
    required this.titleStyle,
    required this.descriptionStyle,
    required this.isSvg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isSvg
                ? SvgPicture.asset(
                    image,
                    width: 200,
                    height: 200,
                  )
                : Image.asset(
                    image,
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
            const SizedBox(height: 20),
            Text(
              title,
              style: titleStyle,
            ),
            const SizedBox(height: 10),
            Text(
              description,
              style: descriptionStyle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
