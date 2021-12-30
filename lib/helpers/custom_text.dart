import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomText extends StatelessWidget {
  /// A class to handle if there are any null variables
  /// which was pass into Navigation Bar and other widgets
  final String text;
  final double? size;
  final Color? color;
  final FontWeight? weight;
  const CustomText(
      {Key? key, required this.text, this.size, this.color, this.weight})
      : super(key: key);

  /// return the text with specific type
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          fontSize: size ?? 16,
          color: color ?? Colors.black,
        ));
  }
}
