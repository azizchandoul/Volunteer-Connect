import 'package:flutter/material.dart';
import 'package:valunteer_app/home_model.dart';
import 'package:valunteer_app/pages/details_page.dart';
import 'package:valunteer_app/pages/massenger.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    HomeModel homeModel = HomeModel();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/man.png",
                    width: 42,
                    height: 42,
                  ),
                  Text(
                    "User@gmail.com",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Massenger()),
                      );
                    },
                    child: Material(
                      elevation: 10,
                      shape: CircleBorder(),
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Icon(Icons.message),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "HOME",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "Organization Activite",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 16,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: homeModel.content.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: SizedBox(
                        width: 357,
                        height: 228,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return DetailsPage(index: index,);
                            },));
                          },
                          child: Card(
                            elevation: 10,
                            //color: Colors.red,
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide.none),
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    homeModel.content[index]['imagePath'],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  top: 20,
                                  right: 20,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 21,
                                    child: Image.asset("assets/images/heart.png"),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Stack(

                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(25),
                                        ),
                                        child: Image.asset(
                                          "assets/images/bg.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Positioned(
                                          bottom: 5,
                                          left: 67,
                                          child: Row(

                                            children: [
                                          Text( homeModel.content[index]['number'
                                            ],
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400),),
                                          SizedBox(width: 10,),
                                          Icon(homeModel.content[index]['icon'],
                                              color: Color(0xffFFA726),
                                          size: 30),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ],
                                                ),
                                              ),
                        ),)
                    ,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
