import 'package:flutter/material.dart';
import 'package:telegram_app/app_color.dart';

class CustomButton extends StatelessWidget {
  final String? title;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? textColor;
  final double? shape;
  final GestureTapCallback? onTap;
  const CustomButton(
      {super.key,
      this.backgroundColor,
      this.borderColor,
      this.shape,
      this.onTap,
      this.title, this.textColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(shape ?? 0),
          color: backgroundColor ?? Theme.of(context).primaryColor,
        ),
        child: Text(
          title ?? 'Title',
          style: AppTextStyle.txt20.copyWith(color: textColor??Colors.black),
        ),
      ),
    );
  }
}
