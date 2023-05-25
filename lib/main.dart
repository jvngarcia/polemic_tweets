import 'package:flutter/material.dart';
import 'package:polemic_tweets/src/app.dart';
// import 'package:polemic_tweets/src/providers/providers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const App();
  }
}
