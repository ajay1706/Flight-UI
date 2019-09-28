import 'package:flight_app/custom_shape_clipper.dart';
import 'package:flutter/material.dart';
import './main.dart';

final Color discountBackgroundColor = Colors.tealAccent.shade200;
final Color flightBorderColor = Color(0xFFE6E6E6);
final Color chipBackgroundColor = Color(0xFFF6F6F6);

class FlightListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Search Result"),
        centerTitle: true,
        leading: InkWell(
          child: Icon(Icons.arrow_back),
          onTap: (){
            Navigator.pop(context);
          } 
          ),
      ),
      body:Column(
        children: <Widget>[
          FlightListTopPart(),
        ],
      ) ,
      
    );
  }
}


class FlightListTopPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
         decoration: BoxDecoration(
                gradient: LinearGradient(colors: [firstColor, secondColor])),
            height:160 ,
          ),
        )
      ],

      
    );
  }
}