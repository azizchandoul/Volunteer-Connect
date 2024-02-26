import 'package:flutter/material.dart';
import 'package:valunteer_app/home_model.dart';

class DetailsPage extends StatelessWidget {
  final int index;

  const DetailsPage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    HomeModel homeModel = HomeModel();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Tunis red crescent",
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.event),
            onPressed: () {},
          ),
          SizedBox(width: 10),
          DrawerButton(),
          SizedBox(width: 10),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
              child: Image.asset(
                  homeModel.content[index]['imagePath'],

                width: MediaQuery.of(context).size.width,
                height: 360,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 380,
            left: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tunis red crescent ",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.place,
                      color: Color(0xffECAD00),
                      size: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Tunis red crescent ",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          color: Color(0xff7A7289),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.932,
                  child: Divider(

                    height: 1,
                    color: Color(0xffC4C4C4),
                    thickness: 2,
                  ),
                ),
                SizedBox(height: 10,),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff18C0C1),
                      foregroundColor: Colors.white),
                  onPressed: () {},
                  child: Text("Details"),
                ),
                SizedBox(height: 15,),

                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.936,
                  child: Text(
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: Color(0xff7A7289),
                        fontSize: 10,
                        fontWeight: FontWeight.w400),
                    overflow: TextOverflow.ellipsis,
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
                    softWrap: true,
                    maxLines: 4,
                  ),
                ),
                SizedBox(height: 15,),

                Text(
                  "Volunteer",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10,),

                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Image.asset("assets/images/man.png",width: 60,height: 60,),
                            SizedBox(height: 5,),
                            Text(
                              "user 1",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
