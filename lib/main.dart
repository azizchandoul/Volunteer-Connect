import 'package:flutter/material.dart';
import 'package:valunteer_app/pages/Choice.dart';
import 'package:valunteer_app/pages/Signup_Volunteer.dart';
import 'package:valunteer_app/pages/details_page.dart';
import 'package:valunteer_app/pages/homepage.dart';
import 'package:valunteer_app/pages/login.dart';
import 'package:valunteer_app/pages/Signup_organization.dart';
import  'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCmeA7tGKAhyBSgvjTp2GjCXS93NdwL4vM",
          appId: "1:446017147111:android:63a4c3aa159b0ae4685242",
          messagingSenderId: "volunteerconnect-7abd6",
          projectId: "volunteerconnect-7abd6")
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}