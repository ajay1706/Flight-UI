import 'package:flight_app/custom_shape_clipper.dart';
import 'package:flutter/material.dart';
import './main.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

final Color discountBackgroundColor = Colors.tealAccent.shade200;
final Color flightBorderColor = Color(0xFFE6E6E6);
final Color chipBackgroundColor = Color(0xFFF6F6F6);

class FlightListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        elevation: 0.0,
        title: Text("Search Result",style: TextStyle(fontFamily: "Oxygen"),),
        gradient: LinearGradient(colors: [
          Colors.teal,Colors.cyan
        ]),
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
        ),
        Column(
          children: <Widget>[
            SizedBox(height: 20,),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              margin: EdgeInsets.symmetric(horizontal: 16),
              elevation: 10,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal:20, vertical: 24),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Boston [BOS]", style:TextStyle(fontSize:16.0, )),
                          Divider(color: Colors.grey,),
                          Text("New York City [JFK]", style:TextStyle(fontSize:16.0,fontWeight: FontWeight.bold )),
                        ],
                      ),
                    ),
                    Spacer(),
                    Expanded(
                      flex: 1,
                      child: Icon(Icons.import_export,color:Colors.black, size: 32,))
                  ],

                ),
              ),
            ),
          ],
        )
      ],

      
    );
  }
}