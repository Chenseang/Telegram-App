import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telegram_app/app_color.dart';

import 'package:telegram_app/modules/dashboard/controller/app_controller.dart';
import 'package:telegram_app/widget/costom_button.dart';

import '../../../widget/costom_textfield.dart';

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    final conApp = Get.put(AppController());
    final auth = FirebaseAuth.instance;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'Walcom To Chater ',
          style: AppTextStyle.txt20
              .copyWith(color: Theme.of(context).primaryColorLight),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            Text(
              'Email',
              style: AppTextStyle.txt20
                  .copyWith(color: Theme.of(context).primaryColorLight),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(
              shape: 20,
              hintText: 'Enter your email',
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Password',
              style: AppTextStyle.txt20
                  .copyWith(color: Theme.of(context).primaryColorLight),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(
              shape: 20,
              hintText: 'Enter your password',
            ),
            const Spacer(),
            CustomButton(
              onTap: () async {
                if (conApp.emailAddress.value.text.isNotEmpty &&
                    conApp.password.value.text.isNotEmpty) {
                  try {
                    await auth.signInWithEmailAndPassword(
                        email: conApp.emailAddress.value.text,
                        password: conApp.password.value.text);
                  } on FirebaseAuthException catch (e) {
                     debugPrint('Sigin-------Erorre${e.code}');
                  } catch (e) {
                    debugPrint('--------Error Sign:$e');
                  }
                }
                conApp.emailAddress.value.clear();
                conApp.password.value.clear();
              },
              title: 'Login',
              shape: 20,
              textColor: Theme.of(context).primaryColor,
              backgroundColor: Theme.of(context).primaryColorLight,
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
