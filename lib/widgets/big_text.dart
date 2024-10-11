import 'package:flutter/material.dart';

class BigText extends StatefulWidget {
  final Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  BigText(
      {Key? key,
      this.color = const Color(0x7f07a877),
      required this.text,
      this.overflow = TextOverflow.ellipsis,
      this.size = 20})
      : super(key: key);

  @override
  State<BigText> createState() => _BigTextState();
}

class _BigTextState extends State<BigText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: 1,
      widget.text,
      overflow: widget.overflow,
      style: TextStyle(
          fontFamily: 'Roboto',
          color: widget.color,
          fontSize: widget.size,
          fontWeight: FontWeight.w400),
    );
  }
}
