import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:superfood_admin_web_portal/authentication/login_screen.dart';
import 'package:superfood_admin_web_portal/main_screen/home_screen.dart';


Future<void> main() async
{
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCCAGta0sdUL44NDMfbvyMoyKkTjEK_jNk",
          appId: "1:754302722949:web:7f9c6638d227fadca4daec",
          messagingSenderId: "754302722949",
          projectId: "superfood-3534f",
          storageBucket: "superfood-3534f.appspot.com",
          authDomain: "superfood-3534f.firebaseapp.com",
      ));
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Admin Web Portal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: FirebaseAuth.instance.currentUser == null ? LoginScreen() : const HomeScreen(),
    );
  }
}


