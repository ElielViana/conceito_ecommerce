import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Size screen;
  @override
  Widget build(BuildContext context) {
    screen = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: screen.height,
          width: screen.width,
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 40, left: 25),
                    width: screen.width / 2,
                    height: screen.height * 0.12,
                    //color: Colors.blue,
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Container(
                            height: 80,
                            child: Center(
                              child: FaIcon(
                                FontAwesomeIcons.slidersH,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(15),
                                side: BorderSide(color: Colors.grey)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 40, right: 25),
                    width: screen.width / 2,
                    height: screen.height * 0.12,
                    //color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Container(
                            // height: 80,
                            child: Center(
                              child: FaIcon(
                                FontAwesomeIcons.bell,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(15),
                                side: BorderSide(color: Colors.grey)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 35, left: 20, right: 20),
                child: TextField(
                    decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(
                    fontSize: 25,
                  ),
                  suffixIcon: Icon(
                    Icons.search,
                    size: 35,
                    color: Colors.black,
                  ),
                )),
              ),
              Container(
                height: screen.height * 0.20,
                width: screen.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.all(14),
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.indigoAccent),
                      child: Center(
                        child: Text(
                          "All",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(14),
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.indigoAccent),
                      child: Center(
                        child: Text(
                          "All",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(14),
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.indigoAccent),
                      child: Center(
                        child: Text(
                          "All",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(14),
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.indigoAccent),
                      child: Center(
                        child: Text(
                          "All",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(14),
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.indigoAccent),
                      child: Center(
                        child: Text(
                          "All",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: 20, top: 0, bottom: 20, right: 20),
                    width: screen.width / 2,
                    height: 50,
                    child: Row(
                      children: [
                        Text(
                          "All cars",
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 20, top: 0, bottom: 20, right: 20),
                    width: screen.width / 2,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.filter_alt_sharp,
                          size: 35,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


/**https://dribbble.com/shots/16039824-Split-Mobile-App-Design-for-Car-Rent/attachments/7883594?mode=media */