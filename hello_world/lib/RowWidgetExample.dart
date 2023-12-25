import 'package:flutter/material.dart';

class RowWidgetExample extends StatelessWidget {
  const RowWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          height: double.infinity,
          child: SafeArea(
            child: /*Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                *//*Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.blue,
                    width: 50,
                    height: 50,
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.red,
                    width: 50,
                    height: 50,
                  ),
                ),*//*
                *//*Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.black,
                    width: 50,
                    height: 50,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.amber,
                    width: 50,
                    height: 50,
                  ),
                ),*//*
                *//*Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
                const SizedBox(width: 12),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.green,
                ),
                const SizedBox(width: 12),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.blueAccent,
                )*//*
              ],
            ),*/
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 300,
                    color: Colors.red,
                  ),
                  Container(
                    width: 250,
                    height: 250,
                    color: Colors.amber,
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.blueAccent,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
