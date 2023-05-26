import 'package:flutter/material.dart';
import 'package:polemic_tweets/src/pages/pages.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Polemic Tweets',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white38,
          elevation: 0,
          actionsIconTheme: IconThemeData(
            color: Colors.blueAccent,
          ),
        ),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => const LoginPage(),
        '/home': (_) => const HomePage(),
      },
    );
  }
}
