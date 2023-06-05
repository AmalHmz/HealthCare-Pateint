import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_care_p/utils/config.dart';

class AppointmentPage extends StatelessWidget {
  List imgs = [
     "doctor1.jpg",
    "doctor2.jpg",
    "doctor3.jpg",
    "doctor4.jpg",
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Config.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height:80),
            Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: Stack(
              children: [
                SizedBox(height: 100),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    
                    child: Icon(CupertinoIcons.arrow_left,
                    color: Colors.white,
                    size: 25,
                    ),
                  ),
                   InkWell(
                    onTap: () {
                    },
                    
                    child: Icon(CupertinoIcons.ellipsis,
                    color: Colors.white,
                    size: 25,
                    ),
                  ),
                ],
               ),
               Padding(padding: EdgeInsets.symmetric(vertical: 10),
               child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                CircleAvatar(radius: 35,
                backgroundImage: AssetImage("assets/images/doctor1.jpg"),
                ),
                SizedBox(height: 15),
                Text("Dr Doctor Name",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),),
                SizedBox(height: 5),
                Text("Speciality ",
                style: TextStyle(
                   color: Colors.white,
                   fontWeight: FontWeight.bold,

                ),),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                      ),
                      child: Icon(CupertinoIcons.phone_fill,
                      color: Config.primaryColor,
                      size: 25,
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                      ),
                      child: Icon(CupertinoIcons.chat_bubble_text_fill,                      color: Config.primaryColor,
                      size: 25,
                      ),
                    ),
                  ],
                ),
               ],),
               ),
              ],
            ),
            ),
            SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height / 1.5 ,
              width: double.infinity,
              padding: EdgeInsets.only(
                top: 20,
                left: 15,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max ,
                children: [
                  Text("About Doctor",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),),
                  SizedBox(height: 5),
                  Text("Dr Doctor Name is a (Speciality) doctor , he have an experience of % years ...",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text("Reviews",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),),
                      SizedBox(width: 10),
                      Icon(CupertinoIcons.star_fill, color: Colors.amber),
                      SizedBox(width: 10),
                      Text("4.9",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),),
                      SizedBox(width: 5),
                      Text("(130 review)",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Config.primaryColor,
                      ),),
                   
                    ],
                  ),
                  SizedBox(height: 160,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: 
                    (context, index){
                    return Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.symmetric(vertical: 5),
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
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width/1.4,
                        child: Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage("assets/images/${imgs[index]}"),
                              ),
                              title: Text('Dr Doctor Name ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),),
                              subtitle: Text('1 day ago'),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(CupertinoIcons.star_fill,
                                  color: Colors.amber,),
                                  Text("4.9",
                                  style: TextStyle(
                                    color: Colors.black54
                                  ),)
                                ],
                              ),

                            ),
                            SizedBox(height: 5),
                            Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              "Many thanks to Dr Doctor name . He is a great and professional doctor",
                            style: TextStyle(
                              color: Colors.black,
                            ),),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                  ),),
                  SizedBox(height: 20),
                  Text("Location",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),),
                  ListTile(
                    leading: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        
                      ),
                      child: Icon(CupertinoIcons.pin,
                      color: Config.primaryColor,
                      size: 30,),
                    ),
                    title: Text("Manaa, Mohamed Benaamri Clinic",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    subtitle: Text("adress line of the clinic ,"),
                  ),
                ],
              ),
              
            ),

          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(15),
        height: 130,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow:[ 
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              spreadRadius: 2            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Appointment price",
                style: TextStyle(
                  color: Colors.black54,
                ),),
                Text("\2000 DZ ",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold
                ),)
              ],
            ),
            SizedBox(height:15 ),
            InkWell(
              onTap: () {},
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 18),
                decoration: BoxDecoration(
                  color: Config.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("Book An Appointment",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
