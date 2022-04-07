import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

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
                'What would you like to find ?',
                style: TextStyle(fontSize: 27.0, fontWeight: FontWeight.bold),
              )),
          SizedBox(height: 18.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildIcon(0),
              _buildIcon(1),
              _buildIcon(2),
              _buildIcon(3),
            ],
          ),
        ],
        ),
      ),
  );
  }
}