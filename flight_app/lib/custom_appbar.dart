import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
List<BottomNavigationBarItem> bottomBarItem = [];
CustomAppBar(){

   bottomBarItem.add(
    BottomNavigationBarItem(
      title: Text("Explore",style: TextStyle(color: Colors.black),),
      icon:Icon(Icons.home,color: Colors.black,) )

  );

   bottomBarItem.add(
    BottomNavigationBarItem(
      title: Text("Watch List",style: TextStyle(color: Colors.black),),
      icon:Icon(Icons.favorite,color: Colors.black,) )

  );

   bottomBarItem.add(
    BottomNavigationBarItem(
      title: Text("Deals",style: TextStyle(color: Colors.black),),
      icon:Icon(Icons.local_offer,color: Colors.black,),
     )

  );

   bottomBarItem.add(
    BottomNavigationBarItem(
      title: Text("Notifications",style: TextStyle(color: Colors.black),),
      icon:Icon(Icons.notifications,color: Colors.black,) )

  );
}


  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10.0,
          child: BottomNavigationBar(
        items: bottomBarItem,
        type: BottomNavigationBarType.fixed,
        
      ),
    );
  }
}