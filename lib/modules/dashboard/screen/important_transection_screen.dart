import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telegram_app/modules/dashboard/controller/app_controller.dart';

import '../../../widget/custom_card_member_cart.dart';

class ImportantTransectionScreen extends StatelessWidget {
  const ImportantTransectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final conApp = Get.put(AppController());

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
                    child: const CustomCardMemberChat(
                      image:
                          'https://i.pinimg.com/564x/c3/30/4b/c3304bae2c85fb63872ec7e27fccf09c.jpg',
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
