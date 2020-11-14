import 'package:devfest_firebase_auth/main.dart';
import 'package:devfest_firebase_auth/services/authentication_class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bscolor,
      body: Center(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'This is Home Page',
              style:TextStyle(
                fontSize:30,
                fontWeight: FontWeight.bold,
                color:bgcolor,
              )
            ),
            RaisedButton(
              onPressed: (){
                context.read<AuthenticationService>().signOut();
                Navigator.pushReplacementNamed(context, '/');
              },
              color: secolor,
              child: Text("sign out"),
            )
          ],
        )
      ),
    );
  }
}