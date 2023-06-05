import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_care_p/screens/appointment_page.dart';
import 'package:health_care_p/utils/config.dart';
import 'package:url_launcher/url_launcher.dart';



class HomePage extends StatelessWidget{
 

  List symptoms = [
    "General",
    "Dantal",
    "Cardiology",
    "Respiration ",
    "Dermatology",
    "Gynecology",
    "Dermatology",
  ];
  List imgs = [
    "doctor1.jpg",
    "doctor2.jpg",
    "doctor3.jpg",
    "doctor4.jpg",
  ];



   
dynamic launchBrowser() async {
try
{
Uri browserUri = Uri(
scheme: 'https',
path: "www.google.com/maps/"
);
await launchUrl(browserUri);
}
catch(e) {
debugPrint(e.toString());
}
}
  @override

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 40),
      
     child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Padding(padding:EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hello Nor ",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                ),),
                CircleAvatar(
                  radius: 25,
                   backgroundColor: Config.primaryColor,
                   child: Text(
                         'D', // display the first letter of the name
                         style: TextStyle(
                         color: Colors.white, // set the text color to white
                         fontSize: 24, // set the font size of the text
                      ),
                     ),
                ),
              ],
            ),
             ),
            SizedBox(height: 40),
            // Your existing form fields
           
           
            ElevatedButton(
              
              onPressed: () {
                launchBrowser(); // Pass the desired latitude and longitude
              },
               style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0), // Set the desired border radius
                ),
              ),
                backgroundColor: MaterialStateProperty.all(Config.primaryColor),
                minimumSize: MaterialStateProperty.all(Size(100, 70)),
                 padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20)),
                
                // Set the desired width and height
              
               ),
              child: Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
              Container(
                padding:EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              
                child: Icon(
              CupertinoIcons.location,
              color: Config.primaryColor,
              size: 30,
              ),
              ),
             // Add the desired Icon
            SizedBox(width: 10), // Optional spacing between the icon and text
           Text('Choose your nearby clinic',
              style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
      ),
  
      ),
              
            
      
    ],
  ),
            ),
              
            SizedBox(height: 25),
             
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text("Category ?",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
                
              ),),
              ),
              SizedBox(height: 70,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: symptoms.length,
                itemBuilder: (context, index){
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: Color(0xFFF4F6FA),
                    borderRadius: BorderRadius.circular(10),
                     boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        spreadRadius: 2,

                      ),
                     ],
                  ),
                  child: Center(
                    child: Text(symptoms[index],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),),
                  ),
                );
              }
              ),
              ),

              SizedBox(height: 15),
              Padding(
                padding:EdgeInsets.only(left: 15),
                child: Text("Popular Doctors",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),),
                ),
                GridView.builder(
                  gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ) ,
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context , index){
                    return InkWell(
                     onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => AppointmentPage(),
                      ),);
                     },
                     child: Container(
                      margin: EdgeInsets.all(8.0),
                      padding: EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2,
                          ),

                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage:AssetImage("assets/images/${imgs[index]}") ,
                          ),
                          Text("Dr Doctor Name",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),),
                          Row(
                           mainAxisSize: MainAxisSize.min,
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                            Icon(CupertinoIcons.pin,
                            color: Colors.black,
                            size: 15,),
                            
                            Text("Menaa",
                            style: TextStyle(
                              color: Colors.black45,
                            ),),
                           ],
                          
                          ),
                          Row(
                           mainAxisSize: MainAxisSize.min,
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                            Icon(CupertinoIcons.star_fill,
                            color: Colors.amber),
                            Text("4,9",
                            style: TextStyle(
                              color: Colors.black45,
                            ),),
                           ],
                          
                          ),

                        ],
                      ),

                     ),
                    );
                  },
                ),

                  

          ],
  
         
          
        ),

        
        
      
      
    );
  
}

}