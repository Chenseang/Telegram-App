import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telegram_app/modules/chat/screen/chat_screen.dart';

import '../../../widget/custom_card_member_cart.dart';

class AllTransectionScreen extends StatelessWidget {
  const AllTransectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 10,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ...List.generate(
                  7,
                  (index) => Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: CustomCardMemberChat(
                      onTap: () {
                        Get.to(const ChatScreen());
                      },
                      image:
                          'https://i.pinimg.com/564x/96/7f/94/967f940130aca8b50396a84da110f8e2.jpg',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
