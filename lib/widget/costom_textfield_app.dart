import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChatTextField extends StatelessWidget {
  const ChatTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).shadowColor,
          borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Type your message...',
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
          suffixIcon: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 25,
                height: 25,
                child: SvgPicture.asset(
                  'assets/image/icons/Plus.svg',
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 23,
                height: 23,
                child: SvgPicture.asset(
                  'assets/image/icons/Emoji.svg',
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 23,
                height: 23,
                child: SvgPicture.asset(
                  'assets/image/icons/Camera.svg',
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
