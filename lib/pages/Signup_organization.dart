import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class CheckboxExample extends StatefulWidget {
  const CheckboxExample({super.key});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}

class Signup_Orginazation extends StatefulWidget {
  const Signup_Orginazation({super.key});

  @override
  State<Signup_Orginazation> createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Signup_Orginazation> {
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
                    "assets/images/build.png",
                    height: MediaQuery.sizeOf(context).height * .2,
                    width: MediaQuery.of(context).size.width,
                                ),
                                const SizedBox(
                                child: Padding(
                              padding: EdgeInsets.all(20),
                              child: Text("Organization",textAlign:TextAlign.center, style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),
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
                          prefixIcon: const Icon(Icons.business_rounded),
                          labelText: "Organization Name",
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
                          prefixIcon: const Icon(Icons.person),
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
                          decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.numbers_outlined),
                          labelText: "Tax Code",
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
                          prefixIcon: const Icon(Icons.code),
                          labelText: "Patent Number",
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
                          labelText: "Date Of Creation",
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
                          labelText: "Fax Number",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),),
                          ),
                        )),
                      ),
                    ),
                    const Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 350,
                          child: Center(
                            child:Column(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        CheckboxExample(),
                                        Text("Include Description",style: TextStyle(fontSize: 16),),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        CheckboxExample(),
                                        Text("Include Description",style: TextStyle(fontSize: 16),),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        CheckboxExample(),
                                        Text("Include Description",style: TextStyle(fontSize: 16),),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        CheckboxExample(),
                                        Text("Include Description",style: TextStyle(fontSize: 16),),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
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
                            /*Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const ChoisPage()),
                            );*/
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