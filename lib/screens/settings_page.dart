import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_care_p/screens/profile_page.dart';
import 'package:health_care_p/utils/config.dart';

class SettingsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Settings",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 30),
          ListTile(
            leading: CircleAvatar(radius: 30,
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
          Divider(height: 50),
          ListTile(
            onTap: ( ) {
              Navigator.push(context, MaterialPageRoute(
                              builder: (context) =>ProfilePage(), 
                               ) );
            },
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                shape: BoxShape.circle,
              ),
              child: Icon(
                CupertinoIcons.person,
              color: Colors.blue,
              size: 35,
              ),
            ),
            title: Text("Profile",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),),
            trailing: Icon(CupertinoIcons.forward),
          ),
          SizedBox(height: 20),
           ListTile(
            onTap: ( ) {},
           
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade100,
                shape: BoxShape.circle,
              ),
              child: Icon(
                CupertinoIcons.bell,
              color: Colors.deepPurple,
              size: 35,
              ),
            ),
            title: Text("Notifications",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),),
            trailing: Icon(CupertinoIcons.forward),
          ),
          SizedBox(height: 20),
          ListTile(
            onTap: ( ) {},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.indigo.shade100,
                shape: BoxShape.circle,
              ),
              child: Icon(
                CupertinoIcons.lock,
              color: Colors.indigo,
              size: 35,
              ),
            ),
            title: Text("Privacy",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),),
            trailing: Icon(CupertinoIcons.forward),
          ),
          SizedBox(height: 20),
          ListTile(
            onTap: ( ) {},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.green.shade100,
                shape: BoxShape.circle,
              ),
              child: Icon(
                CupertinoIcons.info_circle,
              color: Colors.green,
              size: 35,
              ),
            ),
            
            title: Text("About Us",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),),
            trailing: Icon(CupertinoIcons.forward),
          ),
          SizedBox(height: 20),
          Divider(thickness: 10),
          ListTile(
            onTap: ( ) {},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.redAccent.shade100,
                shape: BoxShape.circle,
              ),
              child: Icon(
                CupertinoIcons.person_crop_circle_fill,
              color: Colors.redAccent,
              size: 35,
              ),
            ),
            title: Text("Log Out",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),),
            trailing: Icon(CupertinoIcons.forward),
          ),
      ],
      ),
      ),
    );
    
  }
}


