import 'package:flutter/material.dart';

import '../main.dart';




class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 26,vertical: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Transform.scale(
                      scale: 1.1,
                        child: Opacity(
                        opacity: 0.2,
                        child: Image.asset(
                        'assets/loginScreen/map.png',
                        fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    Transform.scale(
                      scale: 0.8,
                      child: Image.asset(
                        'assets/loginScreen/login2.png',
                        fit: BoxFit.contain,
                        width: 100,
                        height: 100,
                      ),
                    )
                  ],
                ),
            ),
            GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/login');
                },
                child: Container( //the button
                margin: EdgeInsets.only(bottom: 23),
                width:double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: bscolor
                ),
                child: Center(
                  child:Text(
                    'Login',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      letterSpacing: 1,
                      color: bgcolor,
                    ),
                  )
                ),
              ),
            ),
            GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/register');
                },
                child: Container( //the button
                margin: EdgeInsets.only(bottom: 23),
                width:double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: bscolor)
                ),
                child: Center(
                  child:Text(
                    'Register',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      letterSpacing: 1,
                      color: bscolor,
                    ),
                  )
                ),
              ),
            ),
            Container(
              child: Text(
                  'forgot Password?',
                  style: TextStyle(
                  color: bscolor,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}