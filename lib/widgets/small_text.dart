import 'package:flutter/material.dart';

class SmallText extends StatefulWidget {
  final Color? color;
  final String text;
  double size;
  double height;
  SmallText(
      {Key? key,
      this.color = const Color(0xFF202e59),
      required this.text,
      this.size = 12,
      this.height = 1.2})
      : super(key: key);

  @override
  State<SmallText> createState() => _SmallTextState();
}

class _SmallTextState extends State<SmallText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
          fontFamily: 'Roboto',
          color: widget.color,
          fontWeight: FontWeight.w100),
    );
  }
}
