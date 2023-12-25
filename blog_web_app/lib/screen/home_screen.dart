import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("FREEWAY"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              if (controller != null) {
                controller!.loadUrl("https://freeway-seoul.vercel.app");
              }
            },
            icon: const Icon(Icons.home),
          ),
        ],
      ),
      body: WebView(
        initialUrl: "https://freeway-seoul.vercel.app",
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (controller) => this.controller = controller,
      ),
    );
  }
}
