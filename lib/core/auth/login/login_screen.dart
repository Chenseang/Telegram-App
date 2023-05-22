import 'package:flutter/material.dart';
import 'package:telegram_app/app_color.dart';
import 'package:telegram_app/widget/costom_button.dart';

import '../../../widget/costom_textfield.dart';

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
  
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
              onTap: (){

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
