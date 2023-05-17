import 'package:flutter/material.dart';
import 'package:telegram_app/app_color.dart';

class CustomCardMemberChat extends StatelessWidget {
  final String? image;
  final String? title;
  final GestureTapCallback? onTap;
  const CustomCardMemberChat({super.key, this.image, this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: double.infinity,
        height: 62,
        child: Row(
          children: [
            Container(
              height: 62,
              width: 62,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    '$image',
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
                const Text(
                  'Calvin Flores',
                  style: AppTextStyle.txt20,
                ),
                Text(
                  'Hi, bro! Come to my house!',
                  style:
                      AppTextStyle.txt14.copyWith(color: AppColor.primaryColor),
                ),
              ],
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '15:20',
                  style: AppTextStyle.txt16,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 22,
                  height: 22,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Text(
                    '1',
                    style: AppTextStyle.txt16
                        .copyWith(color: Theme.of(context).primaryColorLight),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
