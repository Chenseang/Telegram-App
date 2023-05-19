import 'package:flutter/material.dart';

class SettingApp extends StatelessWidget {
  const SettingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
       child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('This is the Drawer'),
            ElevatedButton(
              onPressed: (){},
              child: const Text('Close Drawer'),
            ),
          ],
        ),
      ),
    );
  }
}
