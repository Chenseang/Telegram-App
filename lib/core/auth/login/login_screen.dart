import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telegram_app/app_color.dart';
import 'package:telegram_app/core/auth/service_firebsae.dart';

import 'package:telegram_app/modules/dashboard/controller/app_controller.dart';
import 'package:telegram_app/modules/dashboard/screen/dashboard_screen.dart';
import 'package:telegram_app/widget/costom_button.dart';

import '../../../generated/l10n.dart';
import '../../../widget/costom_textfield.dart';

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    final conApp = Get.put(AppController());
    final auth = FirebaseService();
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          S.current.welcome,
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
            CustomTextField(
              controller: conApp.emailAddress.value,
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
            CustomTextField(
              controller: conApp.password.value,
              shape: 20,
              hintText: 'Enter your password',
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              onTap: () {
                Get.updateLocale(const Locale('en'));
                // auth.signInWithGoogle();
              },
              title: 'Google',
              shape: 20,
              textColor: Theme.of(context).primaryColor,
              backgroundColor: Theme.of(context).primaryColorLight,
            ),
            const Spacer(),
            CustomButton(
              onTap: () async {
                // debugPrint(conApp.password.value.text);
                // debugPrint(conApp.emailAddress.value.text);
                // bool login = await auth.signInWithEmail(
                //     context: context,
                //     email: conApp.emailAddress.value.text,
                //     password: conApp.password.value.text);
                // if (login == true) {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const DashboardScreen(),
                ));
                // }

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
