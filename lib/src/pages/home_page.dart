import 'package:flutter/material.dart';
import 'package:polemic_tweets/src/ui/ui.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    String defaultLanguage = 'Informal';
    String defaultCommunication = 'Aggressive';
    String defaultIdiom = 'English';

    var languajes = [
      'Informal',
      'Formal',
    ];

    var communications = [
      'Aggressive',
      'Innocent',
      'Passive',
    ];

    var idioms = [
      'English',
      'Spanish',
    ];

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
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: DropdownButtonFormField(
                    decoration: InputDecorations.generalInputDecoration(
                      hinText: 'Type',
                      labelText: 'Type',
                    ),
                    value: defaultLanguage,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: languajes.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        defaultLanguage = newValue!;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: DropdownButtonFormField(
                    decoration: InputDecorations.generalInputDecoration(
                      hinText: 'Communication',
                      labelText: 'Communication',
                    ),
                    value: defaultCommunication,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: communications.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        defaultCommunication = newValue!;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: DropdownButtonFormField(
                decoration: InputDecorations.generalInputDecoration(
                  hinText: 'Language',
                  labelText: 'Language',
                ),
                value: defaultIdiom,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: idioms.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    defaultCommunication = newValue!;
                  });
                },
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 45,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Generate'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
