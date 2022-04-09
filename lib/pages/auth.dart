import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  String email;
  String password;

  AuthPage(this.email, this.password);

  @override
  State<StatefulWidget> createState() {
    return _AuthPageState(email, password);
  }
}

class _AuthPageState extends State<AuthPage> {
  String _email = '';
  String _password = '';
  String email;
  String password;

  List<String> email2 = ["test2"];
  List<String> password2 = ["test2"];

  _AuthPageState(this.email, this.password);

  @override
  Widget build(BuildContext context) {
    email2.add(email);
    password2.add(password);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Login Page'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 10.0, top: 180.0, right: 10.0),
        child: ListView(
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: 'Username'),
              onChanged: (String value) {
                setState(() {
                  _email = value;
                });
              },
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
              onChanged: (String value) {
                setState(() {
                  _password = value;
                });
              },
            ),
            SizedBox(height: 10.0),
            RaisedButton(
              color: Colors.deepPurple,
              textColor: Colors.white,
              child: Text('Login'),
              onPressed: () {
                if (_email == email && _password == password) {
                  Navigator.pushReplacementNamed(context, '/books');
                }
              },
            ),
            TextButton(
              child: Text(
                'creat account',
                style: TextStyle(
                  color: Colors.deepPurple,
                ),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/create');
              },
            ),
          ],
        ),
      ),
    );
  }
}
