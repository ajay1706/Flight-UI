import 'package:flight_app/custom_shape_clipper.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: HomeScreen(),
  theme: appTheme,
));

Color firstColor = Color(0xFFF47D15);
Color secondColor = Color(0xFFEF772C); 

ThemeData appTheme = ThemeData(
  primaryColor: Color(0xFFF3791A),
  fontFamily: "Oxygen"
);


List<String> locations = ['Boston [BOS]', 'New York City [JFK]'];

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(  
        children: <Widget>[
          HomeScreenTopPart(),
        ],
      ),
      
    );
  }
}


const TextStyle dropdownLableStyle = TextStyle(color:Colors.white,fontSize: 16);
const TextStyle dropdownMenuItemStyle = TextStyle(color:Colors.black,fontSize: 16);


class HomeScreenTopPart extends StatefulWidget {
  @override
  _HomeScreenTopPartState createState() => _HomeScreenTopPartState();
}

class _HomeScreenTopPartState extends State<HomeScreenTopPart> {
  @override
  Widget build(BuildContext context) {
    return Stack(

      children: <Widget>[
        ClipPath(

          clipper:CustomShapeClipper() ,
                  child: Container(
            height: 400,
           
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [firstColor,secondColor]
              )
            ),
         child: Column(

           children: <Widget>[
             SizedBox(height: 50,),
Padding(
  padding: const EdgeInsets.all(16.0),
  child:   Row(
    children: <Widget>[
  Icon(Icons.location_on,color:Colors.white),
  SizedBox(width: 16,),
  PopupMenuButton(
    child: Row(
      children: <Widget>[
        Text(locations[0],
        style: dropdownLableStyle,),
        Icon(Icons.keyboard_arrow_down,color: Colors.white,)
      ],
    ),
itemBuilder:(BuildContext context) => <PopupMenuItem<int>> [
PopupMenuItem(
  child: Text(locations[0], style: dropdownMenuItemStyle,),
  value: 0,
),
PopupMenuItem(
  child: Text(locations[1], style: dropdownMenuItemStyle,),
  value: 1,
)


]
  )
  
    ],
  ),
)

           ],
         ),
          ),
        )


      ],
      
    );
  }
}