import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:telegram_app/app_color.dart';
import 'package:telegram_app/modules/dashboard/controller/app_controller.dart';
import 'package:telegram_app/modules/dashboard/screen/all_transection_screen.dart';
import 'package:telegram_app/modules/dashboard/screen/important_transection_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
    with TickerProviderStateMixin {
  TabController? _controller;
  final conApp = Get.put(AppController());
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this);
    // _controller!.addListener(() {
    //   conApp.selectIndex.value = _controller!.index;
    // });
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final listFolder = ['All', 'Important', 'Unread', 'Read'];

    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.whiteColor,
        centerTitle: false,
        title: const Text(
          'Telegram',
          style: AppTextStyle.txt30,
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  'assets/image/icons/Plus.svg',
                  width: 30,
                  height: 30,
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Container(
                height: 23,
                width: 23,
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  'assets/image/icons/Search.svg',
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Container(
                height: 23,
                width: 23,
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  'assets/image/icons/menu.svg',
                ),
              ),
              const SizedBox(
                width: 28,
              ),
            ],
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TabBar(
              controller: _controller,
              isScrollable: true,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              labelStyle: AppTextStyle.txt18.copyWith(
                fontWeight: FontWeight.w600,
              ),
              labelPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              indicator: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(20)),
              tabs: listFolder.asMap().entries.map((e) {
                return Text(
                  e.value,
                );
                // return Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 16),
                //   child: Container(
                //     alignment: Alignment.center,
                //     height: 40,
                //     child: Text(
                //       e.value,
                //       style: AppTextStyle.txt18.copyWith(
                //         fontWeight: FontWeight.w600,
                //       ),
                //     ),
                //   ),
                // );
              }).toList(),
            ),
          ),
        ),
      ),
      body: NotificationListener(
        onNotification: (notification) {
          debugPrint("hello");
          return true;
        },
        child: TabBarView(controller: _controller, children: const [
          AllTransectionScreen(),
          ImportantTransectionScreen(),
          Text('Heng'),
          Text('Heng'),
        ]),
      ),
    );
  }
}
