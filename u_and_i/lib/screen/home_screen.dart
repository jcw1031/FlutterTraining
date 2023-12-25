import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime firstDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        top: true,
        bottom: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _DDay(
              onHeartPressed: onHeartPressed,
              firstDate: firstDate,
            ),
            _CoupleImage(),
          ],
        ),
      ),
    );
  }

  void onHeartPressed() {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            color: Colors.white,
            height: 300,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              onDateTimeChanged: (date) {
                setState(() {
                  firstDate = date;
                });
              },
            ),
          ),
        );
      },
      barrierDismissible: true,
    );
  }
}

class _DDay extends StatelessWidget {
  final GestureTapCallback onHeartPressed;
  final DateTime firstDate;

  const _DDay({required this.onHeartPressed, required this.firstDate});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final now = DateTime.now();

    return Column(
      children: [
        const SizedBox(height: 16),
        Text(
          "U&I",
          style: textTheme.displayLarge,
        ),
        const SizedBox(height: 20),
        Text(
          "우리 처음 만난 날",
          style: textTheme.displayMedium,
        ),
        Text(
          DateFormat("yyyy.MM.dd").format(firstDate),
          style: textTheme.displayMedium,
        ),
        const SizedBox(height: 30),
        IconButton(
          onPressed: onHeartPressed,
          icon: const Icon(Icons.favorite),
          iconSize: 60,
          color: Colors.red[400],
        ),
        Text(
          "D+${now.difference(firstDate).inDays + 1}",
          style: textTheme.bodyLarge,
        ),
      ],
    );
  }
}

class _CoupleImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        "asset/img/middle_image.png",
        height: MediaQuery.of(context).size.height / 2,
      ),
    );
  }
}
