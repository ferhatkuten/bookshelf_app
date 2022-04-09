import 'package:bookshelf_app/pages/auth.dart';
import 'package:flutter/material.dart';

class Creat extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Creat();
  }
}

class _Creat extends State<Creat> {
  String _email = '';
  String _password = '';
  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Create Account Page'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 10.0, top: 180.0, right: 10.0),
        child: ListView(
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: 'Create Username'),
              onChanged: (String value) {
                setState(() {
                  _email = value;
                });
              },
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Create Password'),
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
              child: Text('sing in'),
              onPressed: () {
                if (_email.length > 0 && _password.length > 0) {
                  email = _email;
                  password = _password;
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              AuthPage(email, password)));
                }
                ;
              },
            ),
          ],
        ),
      ),
    );
  }
}
