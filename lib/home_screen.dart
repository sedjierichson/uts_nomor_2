import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<IconData> _icons = [
    FontAwesomeIcons.calendar,
    FontAwesomeIcons.mugSaucer,
    FontAwesomeIcons.compass,
    FontAwesomeIcons.car,
    FontAwesomeIcons.star
  ];

  List<String> _iconsCaption = [
    "Science",
    "Cooking",
    "Math",
    "Biology",
    "Design"
  ];

  Widget _buildCaption(int index) {
    return GestureDetector(
      child: Container(
        height: 50.0,
        width: 50.0,
        child: Text(
          _iconsCaption[index],
          style: TextStyle(
            fontSize: 13.0,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _buildIcon(int index) {
    return GestureDetector(
      child: Container(
        height: 50.0,
        width: 50.0,
        child: Icon(
          _icons[index],
          size: 25.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 120.0),
                child: Text(
                  'Popular Courses : ',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                )),
            SizedBox(height: 18.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildIcon(0),
                _buildIcon(1),
                _buildIcon(2),
                _buildIcon(3),
                _buildIcon(4),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildCaption(0),
                _buildCaption(1),
                _buildCaption(2),
                _buildCaption(3),
                _buildCaption(4),
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 120.0),
                child: Text(
                  'Continue Learning : ',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                )),
            Container(
              margin: EdgeInsets.all(5.0),
              height: 180.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.lightGreen,
                    width: 90.0,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(20.0),
                          child: Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(
                            FontAwesomeIcons.calendar,
                            size: 50.0,
                          ),
                        ),
                        ),
                        
                        Container(
                          child: Text(
                          "Science",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        ),
                        
                        Text("Chapter 4"),
                        SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            
                            Icon(
                              FontAwesomeIcons.clock,
                              size: 10.0,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              "27 Mins",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.lightGreen,
                    width: 90.0,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(20.0),
                          child: Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(
                            FontAwesomeIcons.star,
                            size: 50.0,
                          ),
                        ),
                        ),
                        
                        Container(
                          child: Text(
                          "Design",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        ),
                        
                        Text("Chapter 4"),
                        SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            
                            Icon(
                              FontAwesomeIcons.clock,
                              size: 10.0,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              "30 Mins",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.lightGreen,
                    width: 90.0,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(20.0),
                          child: Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(
                            FontAwesomeIcons.car,
                            size: 50.0,
                          ),
                        ),
                        ),
                        
                        Container(
                          child: Text(
                          "Biology",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        ),
                        
                        Text("Chapter 4"),
                        SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            
                            Icon(
                              FontAwesomeIcons.clock,
                              size: 10.0,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              "25 Mins",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.lightGreen,
                    width: 90.0,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(20.0),
                          child: Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(
                            FontAwesomeIcons.mugSaucer,
                            size: 50.0,
                          ),
                        ),
                        ),
                        
                        Container(
                          child: Text(
                          "Cooking",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        ),
                        
                        Text("Chapter 4"),
                        SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            
                            Icon(
                              FontAwesomeIcons.clock,
                              size: 10.0,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              "18 Mins",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                'Last Seen Courses : ',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              )
            ),
            Container(
              
              margin: EdgeInsets.all(20.0),
              height: 220.0,
              color : Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(

                    width: 400.0,
                    height: 70.0,
                    color: Color.fromRGBO(197, 116, 255, 1),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: Icon(FontAwesomeIcons.calendar, size: 30.0,),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20.0, left: 25.0),
                          child:Column(
                          
                          children: [
                            Text("Basics of Designing", style: 
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),),
                            Text("1 hour, 25 mins", textAlign: TextAlign.left,),
                          ],
                        ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 85.0),
                          child: Icon(FontAwesomeIcons.play),
                        )
                      ]
                    ),
                  ),
                  Container(
                    width: 400.0,
                    height: 70.0,
                    color: Colors.blue,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: Icon(FontAwesomeIcons.calendar, size: 30.0,),
                        ),
                        Text("Basics of Designing")
                      ]
                    ),
                  ),
                  Container(
                    width: 400.0,
                    height: 70.0,
                    color: Colors.blue,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: Icon(FontAwesomeIcons.calendar, size: 30.0,),
                        ),
                        Text("Basics of Designing")
                      ]
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
