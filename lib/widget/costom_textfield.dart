import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final Widget? label;
  final Color? borderColor;
  final Color? backgroundColor;
  final double? shape;
  const CustomTextField(
      {super.key,
      this.hintText,
      this.label,
      this.borderColor,
      this.backgroundColor,
      this.shape});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(shape ?? 0),
        color: backgroundColor ?? Theme.of(context).primaryColorLight,
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText ?? 'Please Input',
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
