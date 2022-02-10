import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  final String fileName;
  const CustomLogo({Key? key, required this.fileName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        height: 220,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: AssetImage("assets/images/" + fileName),
            fit: BoxFit.contain,
          ),
        ));
  }
}
