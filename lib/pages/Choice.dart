import 'package:flutter/material.dart';
import 'package:valunteer_app/pages/Signup_Volunteer.dart';
import 'package:valunteer_app/pages/Signup_organization.dart';

class Choices extends StatelessWidget {
  const Choices({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
          ),
          body: SafeArea(
              child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                SizedBox(
                    width: 500,
                    child: Padding(
                        padding:
                        const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                        child: Image.asset(
                          "assets/images/man.png",
                          height: MediaQuery.sizeOf(context).height * .2,
                          width: MediaQuery.of(context).size.width * .2,
                        ))),
                SizedBox(
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
                        MaterialPageRoute(builder: (context) =>  Signup_Volunteer()),
                      );
                    },
                    child: const Text('Volunteer',style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700)),
                  ),
                ),
                const SizedBox(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                      child: Text(
                        "Volunteering is a voluntary act of an individual or group freely giving time and labor, often for community service",
                        textAlign:
                        TextAlign.center, /*style: TextStyle(color: Colors.blue),*/
                      ),
                    )),
                SizedBox(
                    width: 500,
                    child: Padding(
                        padding:
                        const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                        child: Image.asset(
                          "assets/images/build.png",
                          height: MediaQuery.sizeOf(context).height * .2,
                          width: MediaQuery.of(context).size.width * .2,
                        ))),
                SizedBox(
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
                MaterialPageRoute(builder: (context) =>  Signup_Orginazation()),
              );
                    },
                    child: const Text('Organization',style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700)),
                  ),
                ),
                const SizedBox(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                      child: Text(
                        "is an entity—such as a company, an institution, or an association—comprising one or more people and having a particular purpose",
                        textAlign:
                        TextAlign.center, /*style: TextStyle(color: Colors.blue),*/
                      ),
                    )),
              ])),
        );
  }
}