import 'package:devfest_firebase_auth/pages/home.dart';
import 'package:devfest_firebase_auth/pages/landing.dart';
import 'package:devfest_firebase_auth/pages/login.dart';
import 'package:devfest_firebase_auth/pages/register.dart';
import 'package:devfest_firebase_auth/services/authentication_class.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
          create: (_)=> AuthenticationService(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) => context.read<AuthenticationService>().authStateChanges,
        )
      ],
      child: MaterialApp(
      initialRoute: '/',
      routes:{
        '/':(context)=>Landing(),
        '/login':(context)=>LoginAuthenticationWrapper(),//LoginPage(),
        '/register':(context)=>RegisterAuthenticationWrapper(),//RegisterPage(),
        '/home':(context)=>HomePage(),
      },
  ),
    );
  }
}


class AuthenticationWrapper extends StatelessWidget {
  const AuthenticationWrapper({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();

    if(firebaseUser !=null){
      return HomePage();
    }
    return Landing();
  }
}

class LoginAuthenticationWrapper extends StatelessWidget {
  const LoginAuthenticationWrapper({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();

    if(firebaseUser !=null){
      return HomePage();
    }
    return LoginPage();
  }
}
class RegisterAuthenticationWrapper extends StatelessWidget {
  const RegisterAuthenticationWrapper({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();

    if(firebaseUser !=null){
      return HomePage();
    }
    return RegisterPage();
  }
}

//colors
const bgcolor = const Color(0xff3D5A80);
const bscolor = const Color(0xffE0FBFC);
const secolor = const Color(0xffEE6C4D);
const titlecolor = const Color(0x11eeff2B3443);
