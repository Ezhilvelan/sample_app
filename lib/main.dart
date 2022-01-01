import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()
  ));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: const EdgeInsets.all(60.0),
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.1, 0.4, 0.7, 0.9],
                  colors: [
                    Color(0xFF8E24AA),
                    Color(0xFF9C27B0),
                    Color(0xFFBA68C8),
                    Color(0xFFCE93D8)
                  ]
              )
          ),
          child: Center(
            child: ListView(
              shrinkWrap: true,
              children: [
                Image.asset(
                  "assets/nike.png",
                  height: 50.0,
                  color: Colors.white,
                ),
                const SizedBox(height: 50.0),
                TextFormField(
                  decoration: const InputDecoration(
                      icon: Icon(Icons.account_circle, color: Colors.white),
                      hintText: 'Username',
                      hintStyle: TextStyle(color: Colors.white70)
                  ),
                ),
                const SizedBox(height: 30.0),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.lock, color: Colors.white),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.white70)
                  ),
                ),
                const SizedBox(height: 50.0),
                Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.1, 0.4, 0.7, 0.9],
                          colors: [
                            Color(0xFF7B1FA2),
                            Color(0xFF9C27B0),
                            Color(0xFF9C27B0),
                            Color(0xFF8E24AA)
                          ]
                      )
                  ),
                  child: ButtonTheme(
                    buttonColor: Colors.white10,
                    height: 50.0,
                    minWidth: double.infinity,
                    child: RaisedButton(
                      onPressed: (){},
                      child: const Text(
                        'LOGIN',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'Forget Password ?',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, decoration: TextDecoration.underline),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/google.png', height: 50.0),
                    const SizedBox(width: 10.0),
                    Image.asset('assets/twitter.png', height: 65.0),
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}
