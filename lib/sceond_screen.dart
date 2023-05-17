import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  var dateSend;

  SecondScreen(this.dateSend);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(
        child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('Welcome $dateSend'),
            ElevatedButton(onPressed: () {}, child: Text('Back'))
          ]),
        ),
      ),
    );
  }
}
