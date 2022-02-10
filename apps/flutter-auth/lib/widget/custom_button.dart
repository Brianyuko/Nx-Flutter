import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

class CustomButton extends StatelessWidget {
  final String name;
  final String color;
  const CustomButton({Key? key, required this.name, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(name),
        style: ElevatedButton.styleFrom(
          primary: color.toColor(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
