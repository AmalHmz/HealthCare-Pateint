import 'package:flutter/material.dart';
import 'package:health_care_p/utils/config.dart';


class ProfilePage extends StatelessWidget {
 @override
 Widget build (BuildContext context){
  return 
  Scaffold(
      backgroundColor: Colors.white, // Set the background color of the page
      body: Container(
        padding: EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height:30),
      
         SizedBox(height: 30),
          ListTile(
            leading: CircleAvatar(radius: 40,
                   backgroundColor: Config.primaryColor,
                   child: Text(
                         'D', // display the first letter of the name
                         style: TextStyle(
                         color: Colors.white, // set the text color to white
                         fontSize: 24, // set the font size of the text
                      ),
                     ),
                ),
           
            title: Text("Nor DOUHA",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 25, 
            ),
            ),
            subtitle: Text("She/her "),
          ),
           
      ],
    ),
      ),
  );

}
}