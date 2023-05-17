import 'package:flutter/material.dart';
import 'package:splash_screen_passing_data/sceond_screen.dart';
import 'package:splash_screen_passing_data/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen());
  }
}

class HomeScreen extends StatelessWidget {
  var textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Shift Data'),
              TextField(
                controller: textController,
              ),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              SecondScreen(textController.text.toString()),
                        ));
                  },
                  child: Text('Click'))
            ],
          ),
        ),
      ),
    );
  }
}
