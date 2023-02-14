import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Container(
        color: Colors.grey[200],
        alignment: Alignment.topLeft,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Image.asset('lib/image/Artboard .png'),
                width: 180,
                margin: const EdgeInsets.only(top: 40, bottom: 15, left: 20),
              ),

              // sign up text

              const Padding(
                padding: EdgeInsets.only(left: 30, bottom: 15),
                child: Text('Name',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 25,
                    )),
              ),

              //  first field
              ///////// you can't put a row with to textfield in a one column ////////
              /// I will replace him with a column
              // Row(
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: TextField(
                      controller: _textController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'First',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: TextField(
                      controller: _textController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Last',
                      ),
                    ),
                  ),
                ],
              ),

              // user name field
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 5),
                child: TextField(
                  controller: _textController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'User name',
                  ),
                ),
              ),

              // password field

              const Padding(
                padding: EdgeInsets.only(left: 30, right: 30, top: 5),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Create a Password',
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(left: 30, right: 30, top: 5),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Confirm your Password',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
