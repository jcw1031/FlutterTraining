import 'dart:math';

import 'package:flutter/material.dart';
import 'package:random_dice/screen/home_screen.dart';
import 'package:random_dice/screen/settings_screen.dart';
import 'package:shake/shake.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<StatefulWidget> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> with TickerProviderStateMixin {
  TabController? tabController;
  ShakeDetector? shakeDetector;
  double threshold = 2.7;
  int number = 1;

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 2, vsync: this);
    tabController!.addListener(tabListener);

    shakeDetector = ShakeDetector.autoStart(
      shakeSlopTimeMS: 100,
      shakeThresholdGravity: threshold,
      onPhoneShake: onPhoneShake,
    );
  }

  void tabListener() {
    setState(() {});
  }

  void onPhoneShake() {
    final Random random = Random();

    setState(() {
      number = random.nextInt(5) + 1;
    });
  }

  @override
  void dispose() {
    tabController!.removeListener(tabListener);
    shakeDetector!.stopListening();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        children: renderChildren(),
      ),
      bottomNavigationBar: renderBottomNavigation(),
    );
  }

  List<Widget> renderChildren() {
    return [
      HomeScreen(number: number),
      SettingsScreen(
        threshold: threshold,
        onThresholdChange: onThresholdChange,
      )
    ];
  }

  void onThresholdChange(double value) {
    setState(() {
      threshold = value;
    });
  }

  BottomNavigationBar renderBottomNavigation() {
    return BottomNavigationBar(
      currentIndex: tabController!.index,
      onTap: (index) {
        setState(() {
          tabController!.animateTo(index);
        });
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: "홈",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "설정",
        ),
      ],
    );
  }
}
