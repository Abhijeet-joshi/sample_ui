import 'package:flutter/material.dart';
import 'package:sample_ui/custom_widgets/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.15,
                        color: Colors.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black54,
                                  borderRadius: BorderRadius.circular(21),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "Following",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.elliptical(170, 50),
                              right: Radius.elliptical(170, 50)),
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child: Column(
                          children: [
                            SizedBox(height: MediaQuery.of(context).size.height*0.10,),
                            Text("Alexander", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 21),),
                            Text("Co-Founder", style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 17),),
                            SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: 30,),
                                storyBox(img: "assets/images/usericon.png", text: "Myself"),
                                SizedBox(width: 25,),
                                storyBox(img: "assets/images/travel.png", text: "Travel")
                              ],
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                textBox(topText: "2", bottomText: "Posts"),
                                Container(
                                  height: 50,
                                  width: 2,
                                  color: Colors.grey,
                                ),
                                textBox(topText: "20", bottomText: "Followers"),
                                Container(
                                  height: 50,
                                  width: 2,
                                  color: Colors.grey,
                                ),
                                textBox(topText: "15", bottomText: "Following"),
                              ],
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    textBox(topText: "", bottomText: "Posts"),
                                    Container(
                                      color: Colors.blue,
                                      width: 50,
                                      height: 2,
                                    ),
                                  ],
                                ),
                                textBox(topText: "", bottomText: "Stamp Book"),
                                textBox(topText: "", bottomText: "Community"),
                              ],
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: GridView.count(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 20,
                                  children: <Widget>[
                                    Image.asset("assets/images/user.jpg", fit: BoxFit.fitHeight,),
                                    Image.asset("assets/images/airplane.jpg", fit: BoxFit.fitHeight,),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.yellow, radius: 90,
                  child: Image.asset("assets/images/usericon.png"),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
