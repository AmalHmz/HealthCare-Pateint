import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_care_p/utils/config.dart';


import 'package:url_launcher/url_launcher.dart';


dynamic launchTel() async {
try
{
Uri telUri = Uri(
scheme: 'tel',
path: "+1234567890",
);
await launchUrl(telUri);
}
catch(e) {
debugPrint(e.toString());
}
}


 dynamic launchSms() async {
try
{
Uri smsUri = Uri(
scheme: 'sms',
path: "+2134567890"
);
await launchUrl(smsUri);
}
catch(e) {
debugPrint(e.toString());
}
}

dynamic launchEmail() async {
try
{
Uri emailUri = Uri(
scheme: 'mailto',
path: "amel.hemaizia70@gmail.com",
queryParameters: {
  'subject': "Send an email"
},
);
await launchUrl(emailUri);
}
catch(e) {
debugPrint(e.toString());
}
}

class ContactPage extends StatelessWidget {
  @override
  Widget build (BuildContext context){
      return Scaffold(
      backgroundColor: Colors.white, // Set the background color of the page
      body: Container(
        padding: EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height:50),
        Text(
          ' Contacts !',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.black,
             decoration: TextDecoration.none,
          ),
        ),

         SizedBox(height:20),
        ElevatedButton.icon(
          onPressed: launchTel,
          icon: Icon(CupertinoIcons.phone),
          label: Text('Call phone',
          style: TextStyle(
            fontSize: 20,
          ),),
           style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0), // Set the desired border radius
                ),
              ),
                backgroundColor: MaterialStateProperty.all(Config.primaryColor),
                minimumSize: MaterialStateProperty.all(Size(300, 70)),
                 padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20),
                 ),
           ),
        ),
        SizedBox(height:16),
        ElevatedButton.icon(
          onPressed: launchSms,
          icon: Icon(CupertinoIcons.chat_bubble_text),
          label: Text('Send Sms',
          style: TextStyle(
            fontSize: 20,
          ),),
           style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0), // Set the desired border radius
                ),
              ),
                backgroundColor: MaterialStateProperty.all(Config.primaryColor),
                minimumSize: MaterialStateProperty.all(Size(300, 70)),
                 padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20)),
                
                // Set the desired width and height
              
               ),
        ),
        SizedBox(height: 16),
         ElevatedButton.icon(
          onPressed: launchEmail,
          icon: Icon(CupertinoIcons.mail),
          label: Text('Send Email',
          style: TextStyle(
            fontSize: 20,
          ),),
           style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0), // Set the desired border radius
                ),
              ),
                backgroundColor: MaterialStateProperty.all(Config.primaryColor),
                minimumSize: MaterialStateProperty.all(Size(300, 70)),
                 padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20)),
                
                // Set the desired width and height
              
               ),
        ),
      ],
    ),
      ),
      );
      
  }
}