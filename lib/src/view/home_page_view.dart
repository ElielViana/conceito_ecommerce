// @dart=2.9
import 'package:conceito_e_commerce/src/view/item_details_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Size screen;
  @override
  Widget build(BuildContext context) {
    screen = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: screen.height,
          width: screen.width,
          color: Color(0xfff6f8fc),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 40, left: 25, right: 120),
                    width: screen.width / 2,
                    height: screen.height * 0.12,
                    // color: Colors.blue,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 55,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              child: Center(
                                child: FaIcon(
                                  FontAwesomeIcons.slidersH,
                                  size: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(color: Colors.grey)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 40, right: 25),
                    width: screen.width / 2,
                    height: screen.height * 0.122,
                    // color: Colors.green,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 55,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              child: Center(
                                child: FaIcon(
                                  FontAwesomeIcons.bell,
                                  size: 22,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(10),
                                  side: BorderSide(color: Colors.grey)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 25, left: 20, right: 20, bottom: 20),
                child: TextField(
                    decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(
                    fontSize: 20,
                  ),
                  suffixIcon: Icon(
                    Icons.search,
                    size: 28,
                    color: Colors.black,
                  ),
                )),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: screen.height * 0.12,
                width: screen.width,
                // color: Colors.blue,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.all(14),
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(boxShadow: [
                        // color: Color(0xFF5a6efd)
                        BoxShadow(
                          color: Color(0xFF5a6efd),
                          blurRadius: 1.0, // soften the shadow
                          spreadRadius: 1.0, //extend the shadow
                        )
                      ], shape: BoxShape.circle, color: Color(0xFF5a6efd)),
                      child: Center(
                        child: Text(
                          "All",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(14),
                      padding: EdgeInsets.all(14),
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Center(
                          child: Image.asset(
                        "assets/images/vw.jpg",
                        fit: BoxFit.fitHeight,
                      )
                          // Image.network(
                          //   "https://img2.gratispng.com/20180720/gwk/kisspng-volkswagen-beetle-car-volkswagen-gol-volkswagen-18-istanbul-background-5b518d3c54b186.1451426715320712283469.jpg",
                          // ),
                          ),
                    ),
                    Container(
                      margin: EdgeInsets.all(14),
                      padding: EdgeInsets.all(14),
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Center(
                          child: Image.asset("assets/images/toyota.png",
                              fit: BoxFit.cover)
                          //  Image.network(
                          //   "https://w7.pngwing.com/pngs/286/593/png-transparent-tesla-roadster-tesla-motors-tesla-model-s-tesla-model-x-tesla-angle-logo-car.png",
                          // ),
                          ),
                    ),
                    Container(
                      margin: EdgeInsets.all(14),
                      padding: EdgeInsets.all(10),
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Center(
                          child: Image.asset(
                        "assets/images/tesla.png",
                        fit: BoxFit.contain,
                      )),
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
                          style: TextStyle(fontSize: 20, color: Colors.white),
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
                      left: 20,
                    ),
                    width: screen.width / 2,
                    height: 50,
                    child: Row(
                      children: [
                        Text(
                          "All cars",
                          style: TextStyle(
                            fontSize: 21,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    width: screen.width / 2,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.filter_alt_outlined,
                          size: 30,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                // color: Colors.red,
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                width: screen.width,
                height: screen.height * 0.49,
                child: ListView(
                  children: [
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: InkWell(
                          // focusColor: Colors.white,
                          highlightColor: Colors.white,
                          hoverColor: Colors.white,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ItemDetails()),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.all(20.0),
                            height: screen.height * 0.12,
                            width: screen.width,
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                    child: Container(
                                  // color: Colors.blue,
                                  decoration: BoxDecoration(),
                                  child: Image.asset(
                                    "assets/images/bmw.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                )),
                                Expanded(
                                    child: Container(
                                  margin: EdgeInsets.only(left: 20),
                                  // color: Colors.purple,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "BMW 328",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Altomatic",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "\$150/day",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.indigoAccent,
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                              ],
                            ),
                          ),
                        )),
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Container(
                          margin: EdgeInsets.all(20.0),
                          // color: Colors.blue,
                          height: screen.height * 0.12,
                          width: screen.width,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  child: Container(
                                color: Colors.blue,
                                child: Image.asset(
                                  "assets/images/yaris.jpg",
                                  fit: BoxFit.cover,
                                ),
                              )),
                              Expanded(
                                  child: Container(
                                margin: EdgeInsets.only(left: 20),
                                // color: Colors.purple,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Toyota Yaris",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Altomatic",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "\$75/day",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.indigoAccent,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                            ],
                          ),
                        )),
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Container(
                          margin: EdgeInsets.all(20.0),
                          // color: Colors.blue,
                          height: screen.height * 0.12,
                          width: screen.width,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  child: Container(
                                // color: Colors.blue,
                                child: Image.asset(
                                  "assets/images/teslaa.png",
                                  fit: BoxFit.cover,
                                ),
                              )),
                              Expanded(
                                  child: Container(
                                margin: EdgeInsets.only(left: 20),
                                // color: Colors.purple,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Tesla Model S",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Altomatic",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "\$200/day",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.indigoAccent,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  // margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25),
                    ),
                    color: Color(0xFF282F66),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.home,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      FaIcon(
                        FontAwesomeIcons.watchmanMonitoring,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      FaIcon(
                        FontAwesomeIcons.fileUpload,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      FaIcon(
                        FontAwesomeIcons.user,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/**https://dribbble.com/shots/16039824-Split-Mobile-App-Design-for-Car-Rent/attachments/7883594?mode=media */

/**https Container(
                  margin: EdgeInsets.all(20),
                  width: screen.width,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: ),
                  // color: Colors.green,
                  height: screen.height * 0.40,
                  child: Column(
                    children: [
                      Card(
                          child: Container(
                        margin: EdgeInsets.all(20.0),
                        width: screen.width,
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          children: <Widget>[
                            Text('Macoratti .net'),
                            Text('Quase tudo para .NET')
                          ],
                        ),
                      ))
                    ],
                  ),
                ), */
