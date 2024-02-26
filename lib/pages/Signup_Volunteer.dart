import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:valunteer_app/pages/Choice.dart';
import 'package:valunteer_app/pages/login.dart';
class Signup_Volunteer extends StatelessWidget {
  Signup_Volunteer({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final fullnameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body:
      SafeArea(
              child: SingleChildScrollView(
                child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              
                  Image.asset(
                    "assets/images/man.png",
                    height: MediaQuery.sizeOf(context).height * .2,
                    width: MediaQuery.of(context).size.width,
                  ),
                  const SizedBox(
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Text("Volunteer",textAlign:TextAlign.center, style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),
                        ),
                      )),
                  SizedBox(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 350,
                              child: Center(child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.format_align_justify),
                                  labelText: "ID CIN",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),),
                                ),
                              )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 350,
                              child: Center(child: TextField(
                                controller: fullnameController,
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.person),
                                  labelText: "Full Name",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),),
                                ),
                              )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 350,
                              child: Center(child: TextField(
                                controller: emailController,
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.email),
                                  labelText: "E-mail",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),),
                                ),
                              )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 350,
                              child: Center(child: TextField(
                                controller:passwordController ,
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.lock),
                                  labelText: "Password",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),),
                                ),
                              )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 350,
                              child: Center(child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.date_range),
                                  labelText: "Date Of Birth",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),),
                                ),
                              )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 350,
                              child: Center(child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.home_rounded),
                                  labelText: "Address",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),),
                                ),
                              )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 350,
                              child: Center(child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.phone),
                                  labelText: "Mobile Number",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),),
                                ),
                              )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 200,
                              height: 60,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                  const MaterialStatePropertyAll<Color>(Color(0xFF18C0C1)),
                                  foregroundColor: MaterialStateProperty.all(Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Login()),
                                  );
                                  FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailController.text.trim(), password: passwordController.text.trim());
                                  FirebaseFirestore.instance.collection('users').add({
                                    'name': fullnameController.text,
                                    'email': emailController.text,
                                  });
                                },
                                child: const Text('Submit',style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700)),
                              ),
                            ),
                          ),
                        ],
                      ))
                ]),
              ),
            ),
          );
  }
}