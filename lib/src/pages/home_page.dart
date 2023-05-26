import 'package:flutter/material.dart';
import 'package:polemic_tweets/src/ui/ui.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/');
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                text: 'Polemic ',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: 'Tweets',
                    style: TextStyle(
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            TextFormField(
              decoration: InputDecorations.generalInputDecoration(
                hinText: 'chatGPT will take our work',
                labelText: 'Topic to be discussed...',
              ),
              autocorrect: false,
              keyboardType: TextInputType.text,
              maxLines: 3,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a topic to be discussed';
                }
                return null;
              },
              textAlignVertical: TextAlignVertical.top,
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
