import 'package:flutter/material.dart';

class BigText extends StatefulWidget {
  final Color? color;
  final String text;
  TextOverflow textOverflow;
  double size;
  BigText(
      {Key? key,
      this.color = const Color(0x7f07a877),
      required this.text,
      this.size = 20,
      this.textOverflow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  State<BigText> createState() => _BigTextState();
}

class _BigTextState extends State<BigText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: widget.size,
          color: widget.color,
          fontWeight: FontWeight.w400),
    );
  }
}
