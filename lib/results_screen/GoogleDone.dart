import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GoogleDone extends StatelessWidget {
  String _user;

  GoogleDone(String user) {
    _user = user;

    print(_user);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.network(
                'https://lh3.googleusercontent.com/6UgEjh8Xuts4nwdWzTnWH8QtLuHqRMUB7dp24JYVE2xcYzq4HA8hFfcAbU-R-PC_9uA1',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Text(_user,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Google sign in Done!'),
            ),
          ],
        ),
      ),
    );
  }
}
