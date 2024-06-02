
import 'package:coffee_app/const.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
            

          Container(
          height: 200,
          padding: const EdgeInsets.only(top: 25),
          child: Image.asset("lib/images/beans.png"),
        ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Divider(
              color: Colors.brown.withOpacity(0.5)
            ),
          ),
    
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: ListTile(
              leading: Icon(Icons.home, color: Colors.brown,),
              title: Text("Home", style: TextStyle(color: Colors.brown,),),
            ),
          ),

           const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: ListTile(
              leading: Icon(Icons.shopping_bag_rounded, color: Colors.brown,),
              title: Text("Cart", style: TextStyle(color: Colors.brown,),),
            ),
          ),
    
            const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: ListTile(
              leading: Icon(Icons.info, color: Colors.brown,),
              title: Text("About", style: TextStyle(color: Colors.brown,),),
            ),
    
     
    
          ),
            ],
          ),
    
           const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: ListTile(
              leading: Icon(Icons.logout_rounded, color: Colors.brown,),
              title: Text("Logout", style: TextStyle(color: Colors.brown,),),
            ),
    
     
    
          ),
    
    
        ],
      ),
    );
  }
}