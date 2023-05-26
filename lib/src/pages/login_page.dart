import 'package:flutter/material.dart';
import 'package:polemic_tweets/src/ui/ui.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Uri urlFollow = Uri.parse('https://jvngarcia.com');
    final Uri urlGithub =
        Uri.parse('https://github.com/jvngarcia/polemic_tweets');

    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
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
              const SizedBox(height: 10),
              const Text(
                'Create controversial tweets and share them with the world!',
                style: TextStyle(
                  fontSize: 13,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              TextFormField(
                decoration: InputDecorations.generalInputDecoration(
                  hinText: 'example@example.com',
                  labelText: 'Email',
                ),
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  String pattern =
                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                  RegExp regExp = RegExp(pattern);

                  return regExp.hasMatch(value ?? '')
                      ? null
                      : 'El valor ingresado no es un correo';
                },
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  child: const Text('Login'),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Expanded(
                    child: SizedBox(
                      height: 45,
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        icon: const Icon(Icons.grade_outlined),
                        onPressed: () {
                          launchUrl(urlGithub);
                        },
                        label: const Text('Star on gihub'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: SizedBox(
                      height: 45,
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        icon: const Icon(Icons.web_asset),
                        onPressed: () {
                          launchUrl(urlFollow);
                        },
                        label: const Text('Followme'),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
