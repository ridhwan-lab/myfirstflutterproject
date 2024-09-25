import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:myfirstflutterproject/main.dart';
import 'package:myfirstflutterproject/network/api.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: deviceWidth,
        height: deviceHeight,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 200,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.blue,
                        Colors.black,
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 80,
              left: (deviceWidth / 2) - 100,
              child: const CircleAvatar(
                maxRadius: 100,
                foregroundImage: AssetImage('assets/jatanegara.png'),
              ),
            ),
            Form(
              key: _formKey,
              child: Positioned(
                top: 280,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text(
                        'Log Masuk',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextFormField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                        ),
                        validator: (String? value) {
                          if (value == null || value == '') {
                            return 'Please enter your email';
                          } else if (value.contains('@') == false) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                        ),
                        validator: (String? value) {
                          if (value == null || value == '') {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const Expanded(
                            child: SizedBox(),
                          ),
                          InkWell(
                            onTap: () {},
                            child: const Text('Forget Password?'),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                foregroundColor: Colors.white),
                            onPressed: () async {
                              if (_formKey.currentState!.validate()) {
                                // print('Form is valid');
                                var data = {
                                  'email': emailController.text,
                                  'password': passwordController.text
                                };

                                var res =
                                    await Network().postData('login', data);
                                var body = json.decode(res.body);
                                var statusCode = res.statusCode;
                                if (statusCode == 422) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(body['message']),
                                      backgroundColor: Colors.red,
                                    ),
                                  );
                                } else {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const MyHomePage(
                                                  title: 'Utama')));
                                }
                                print(res.statusCode);
                              }
                            },
                            child: const Text('Login'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              width: deviceWidth,
              child: Container(
                height: 20,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue,
                      Color.fromARGB(255, 7, 93, 162),
                    ],
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Copyright 2024 @ All right reservded JKM',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}