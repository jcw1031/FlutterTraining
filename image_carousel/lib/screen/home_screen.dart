import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController pageController = PageController();

  @override
  void initState() {
    super.initState();

    Timer.periodic(
      const Duration(seconds: 3),
      (timer) => swipeToNext(pageController),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [1, 2, 3, 4, 5]
            .map((element) => Image.asset(
                  "asset/img/image_$element.jpeg",
                  fit: BoxFit.cover,
                ))
            .toList(),
      ),
    );
  }
}

void swipeToNext(PageController pageController) {
  int? nextPage = pageController.page?.toInt();
  if (nextPage == null) {
    return;
  }

  if (nextPage == 4) {
    nextPage = 0;
  } else {
    nextPage++;
  }

  pageController.animateToPage(
    nextPage,
    duration: const Duration(milliseconds: 500),
    curve: Curves.ease,
  );
}
