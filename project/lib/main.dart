import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project/Sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'User Profile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _obscureText = true;
  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Sign in'),
        backgroundColor: const Color.fromRGBO(1, 210, 255, 1),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Image.asset('lib/image/Artboard 15@10x.png'),
              margin: const EdgeInsets.only(
                  top: 40, bottom: 15, right: 60, left: 60),
            ),

            // sign in text

            const Padding(
              padding: EdgeInsets.all(20),
              child: Text('Sign in',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 35,
                  )),
            ),

            // user name field

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                controller: _textController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'User name',
                ),
              ),
            ),

            // password field

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
              child: TextField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: 'Password',
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          _obscureText = !_obscureText;
                        },
                      );
                    },
                    child: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off),
                  ),
                ),
              ),
            ),

            // buttons

            // forgot your password button

            Padding(
              padding: const EdgeInsets.only(left: 12, right: 20, top: 5),
              child: TextButton(
                onPressed: () {},
                child: const Text('Forgot password?'),
              ),
            ),

            // Learn more Button

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
              child: Row(
                children: <Widget>[
                  const Text(
                    'Not your device? Use Guest mode to sign in privately.',
                    style: TextStyle(fontSize: 13),
                  ),
                  TextButton(onPressed: () {}, child: const Text('Learn more')),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 20, top: 5),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (BuildContext context) {
                            return SignUp();
                          },
                        ));
                      },
                      child: const Text('Create account')),
                ),

                // sign in button

                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: const Color.fromRGBO(1, 210, 255, 1),
                        minimumSize: const Size(90, 40)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
