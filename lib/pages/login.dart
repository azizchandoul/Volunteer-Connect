import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:valunteer_app/pages/Choice.dart';
import 'package:valunteer_app/pages/Signup_organization.dart';
import 'package:valunteer_app/pages/homepage.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();


  Future login() async{

    await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text);
  Navigator.push(context, MaterialPageRoute(builder: (context) =>  HomePage()),);
  }
  @override
  void dispose(){
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.asset('assets/images/man.png')),
              ),
              const Text("LOGIN",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30),),
              const Text('Welcome back Nice to see you again'),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 350,
                    child: Center(child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email),
                      labelText: "Email",
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
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.key),
                        labelText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),),
                        ),
                      )),
                    ),
                  ),
                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GestureDetector(
                  onTap: login,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xFF18C0C1),
                      borderRadius: BorderRadius.circular(20), // Adjust the radius as needed
                    ),
                    child: const Center(
                      child: Text(
                        'LOGIN',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(10),
                  child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Not yet a member ?",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700,),),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Choices()),
                      );
                    },
                      child: const Text("Sign up now",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color:Color(0xFF18C0C1)),)),
                  ],
                              ),
                )
            ],
          ),
        ),
      ),
    );
  }

}
