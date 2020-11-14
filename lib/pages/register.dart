
import 'package:devfest_firebase_auth/services/authentication_class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../main.dart';


class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text('Email:'),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(bottom: 23),
              width: MediaQuery.of(context).size.width,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: titlecolor),
                color: bscolor
              ),
              child: Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: TextField(
                  controller: emailController,
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border :InputBorder.none,
                    contentPadding: EdgeInsets.only(top:14),
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      color : Colors.black38,
                    )
                  ),
                ),
              ),
            ),
            Text('Password:'),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(bottom: 23),
              width: MediaQuery.of(context).size.width,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: titlecolor),
                color: bscolor
              ),
              child: Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: TextField(
                  controller: passwordController,
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border :InputBorder.none,
                    contentPadding: EdgeInsets.only(top:14),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color : Colors.black38,
                    )
                  ),
                ),
              ),
            ),
            SizedBox(height:20),
            GestureDetector(
              onTap: (){
                  context.read<AuthenticationService>().signUp(email:emailController.text.trim(),password: passwordController.text.trim());
                },
              child: Container(
                child: Center(
                  child: Text(
                    'Register',
                    style:TextStyle(
                      color: bscolor,
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                    )
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration:BoxDecoration(
                  color: secolor,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}