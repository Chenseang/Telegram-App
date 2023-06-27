import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../app_color.dart';
import '../../../widget/costom_textfield_app.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _firestore = FirebaseFirestore.instance;
  final auth = FirebaseAuth.instance;
  User? user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorLight,
      appBar: AppBar(
        toolbarHeight: 62,
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColorLight,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Container(
            alignment: Alignment.center,
            child: SvgPicture.asset('assets/image/icons/back.svg'),
          ),
        ),
        centerTitle: false,
        title: Row(
          children: [
            Container(
              height: 54,
              width: 54,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://i.pinimg.com/564x/ea/60/20/ea6020219a8763868642d1bd12c28317.jpg',
                  ),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  auth.currentUser?.displayName ?? "Person",
                  style:
                      AppTextStyle.txt18.copyWith(fontWeight: FontWeight.w700),
                ),
                Text(
                  'Online',
                  style:
                      AppTextStyle.txt14.copyWith(color: AppColor.primaryColor),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Container(
            alignment: Alignment.center,
            child: SvgPicture.asset('assets/image/icons/Profile menu.svg'),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Center(child: ChatTextField(
        onTapPlush: () async {
          await user?.updateDisplayName("Seang");
        },
      )),
    );
  }
}
