import 'package:flutter/material.dart';

import 'RowWidgetExample.dart';

void main() {
  runApp(const RowWidgetExample());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "우파카",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue,
                ),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Colors.amber,
                ),
                child: const Text("TextButton"),
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.amber,
                ),
                child: const Text("OutlinedButton"),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black54,
                  backgroundColor: Colors.amber,
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                child: const Text("ElevatedButton"),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.home),
              ),
              GestureDetector(
                onTap: () {
                  print("on tap");
                },
                onDoubleTap: () {
                  print("on double tap");
                },
                onLongPress: () {
                  print("on long press");
                },
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.redAccent,
                  ),
                  width: 100.0,
                  height: 100.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FloatingActionButtonExample extends StatelessWidget {
  const FloatingActionButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Text("클릭"),
        ),
        body: SafeArea(
          top: true,
          bottom: true,
          left: true,
          right: true,
          child: Container(
            color: Colors.black,
            child: Container(
              color: Colors.blueAccent,
              margin: const EdgeInsets.all(16.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  color: Colors.redAccent,
                  width: 50,
                  height: 50,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
