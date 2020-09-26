import 'package:flutter/material.dart';
import 'auth.dart';
class Welcome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WelcomeState();
  }
}

class WelcomeState extends State<Welcome> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome'),
          centerTitle: true,
          leading: Icon(Icons.supervisor_account),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Center(
                  child: Text(
                'Welcome to my app , $name',
                style: TextStyle(fontSize: 25.0),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Center(
                  child: Text(
                'Your email is $email',
                style: TextStyle(fontSize: 25.0),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
