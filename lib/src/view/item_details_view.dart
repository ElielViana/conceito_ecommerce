// @dart=2.9
import 'package:flutter/material.dart';
import "package:imageview360/imageview360.dart";

class ItemDetails extends StatefulWidget {
  @override
  _ItemDetailsState createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  Size screen;
  List<ImageProvider> imageList = <ImageProvider>[];
  bool imagePrecached = false;

  @override
  void initState() {
    //* To load images from assets after first frame build up.
    WidgetsBinding.instance
        .addPostFrameCallback((_) => updateImageList(context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    screen = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: screen.height * 0.55,
              width: screen.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.only(top: 40, left: 20),
                    // color: Colors.blue,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Toyota Yaris",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "2019",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 190,
                        ),
                        SizedBox(
                          width: 55,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              child: Center(
                                  child: InkWell(
                                highlightColor: Colors.white,
                                hoverColor: Colors.white,
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.close_rounded,
                                  size: 25,
                                  color: Colors.black,
                                ),
                              )),
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
                  )),
                  (imagePrecached == true)
                      ? ImageView360(
                          key: UniqueKey(),
                          imageList: imageList,
                        )
                      : Expanded(
                          child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircularProgressIndicator(),
                            ],
                          ),
                        ))
                ],
              ),
            ),
            Container(
              height: screen.height * 0.45,
              width: screen.width,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                ),
                color: Color(0xFF282F66),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                              padding: EdgeInsets.only(top: 15, bottom: 20),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Overview",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ],
                              ))),
                      Expanded(
                          child: Container(
                              padding: EdgeInsets.only(top: 15, bottom: 20),
                              // color: Colors.blue,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "\$150/day",
                                    style: TextStyle(
                                      fontSize: 23,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ))),
                    ],
                  ),
                  Row(
                    children: [
                      Card(
                          color: Color(0xFF282F66),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Color(0xFF414b80),
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            margin: EdgeInsets.all(20),
                            height: 35,
                            width: 138,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    child: Icon(
                                  Icons.speed,
                                  size: 25,
                                  color: Colors.grey,
                                )),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                    child: Text(
                                  "350 km",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                )),
                              ],
                            ),
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Card(
                          color: Color(0xFF282F66),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Color(0xFF414b80),
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            margin: EdgeInsets.all(20),
                            height: 35,
                            width: 138,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    child: Icon(
                                  Icons.dashboard,
                                  size: 25,
                                  color: Colors.grey,
                                )),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                    child: Text(
                                  "Altomatic",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                )),
                              ],
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Card(
                          color: Color(0xFF282F66),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Color(0xFF414b80),
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            margin: EdgeInsets.all(20),
                            height: 35,
                            width: 138,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    child: Icon(
                                  Icons.local_fire_department,
                                  size: 25,
                                  color: Colors.grey,
                                )),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                    child: Text(
                                  "Diesel",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                )),
                              ],
                            ),
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Card(
                          color: Color(0xFF282F66),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Color(0xFF414b80),
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            margin: EdgeInsets.all(20),
                            height: 35,
                            width: 138,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    child: Icon(
                                  Icons.event_seat_sharp,
                                  size: 25,
                                  color: Colors.grey,
                                )),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                    child: Text(
                                  "4 seats",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                )),
                              ],
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 180,
                        height: 55,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Container(
                            child: Center(
                                child: Text(
                              "Recent now",
                              style: TextStyle(fontSize: 18),
                            )),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff9d74ff),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }

  void updateImageList(BuildContext context) async {
    for (int i = 1; i <= 36; i++) {
      imageList.add(AssetImage('assets/images/car/$i.jpg'));

      //* To precache images so that when required they are loaded faster.
      await precacheImage(AssetImage('assets/images/car/$i.jpg'), context);
    }
    setState(() {
      imagePrecached = true;
    });
  }
}
