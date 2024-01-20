import 'package:flutter/material.dart';
import '../data.dart';

class home_page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<home_page> {
  var _deviceHeight;
  var _deviceWidth;

  var _selectedGame;

  @override
  void initState() {
    super.initState();
    _selectedGame = 0;
  }

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _featureGamesWidget(),
          // Add other widgets to the Stack as needed
        ],
      ),
    );
  }

  Widget _featureGamesWidget() {
    return SizedBox(
      height: _deviceHeight * 0.50,
      width: _deviceWidth,
      child: Container(
        // Add content for the _featureGamesWidget here
        child: Text("Feature Games Widget"),
      ),
    );
  }
}
