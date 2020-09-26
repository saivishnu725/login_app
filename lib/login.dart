import 'package:flutter/material.dart';
import 'package:login_app/auth.dart';
import 'welcome.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          leading: Icon(Icons.home),
          centerTitle: true,
          elevation: 1.5,
        ),
        bottomNavigationBar: RaisedButton(
            elevation: 4.0,
            child: Text('Click here to skip and have no name '),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Welcome()));
            }),
        body: ListView(
          children: [
            Padding(
                padding: const EdgeInsets.all(25.0),
                child: FlutterLogo(
                  size: 150,
                )),
            MaterialButton(
              child: Center(
                child: Row(
                  textDirection: TextDirection.ltr,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(
                        image: AssetImage('assets/google_logo.png'),
                        height: 25,
                        width: 25,
                      ),
                    ),
                    Text(
                      'Sign in with Google',
                      style: TextStyle(fontSize: 25.0),
                    ),
                  ],
                ),
              ),
              onPressed: () {
                debugPrint('SignIn With Google clicked');
                signInWithGoogle().whenComplete(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Welcome()));
                });
              },
            ),
          ],
        ));
  }
}
