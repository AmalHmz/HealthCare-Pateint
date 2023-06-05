import 'package:flutter/material.dart';
import 'package:health_care_p/screens/contact_page.dart';
import 'package:health_care_p/utils/config.dart';



class Doctor {
  final String name;
  final String speciality;
  final String picture ;
  Doctor({required this.name, required this.speciality , required this.picture });
}
class InboxPage extends StatelessWidget {
  final Doctors = <Doctor>[
  Doctor(name: " Dr Doctor Name" , speciality: "Dental", picture:'assets/images/doctor1.jpg' ),
  Doctor(name: " Dr  Doctor Name" , speciality: "Dental", picture:'assets/images/doctor2.jpg' ),
  Doctor(name: " Dr Doctor Name" , speciality: "Dental", picture:'assets/images/doctor4.jpg' ),
  Doctor(name: " Dr Doctor  Name" , speciality: "Dental", picture:'assets/images/doctor1.jpg' ),
  Doctor(name: " Dr Doctor Name" , speciality: "Dental", picture:'assets/images/doctor4.jpg' ),
  Doctor(name: " Dr Name" , speciality: "Dental", picture:'assets/images/doctor1.jpg' ),
  Doctor(name: " Dr Name" , speciality: "Dental", picture:'assets/images/doctor2.jpg' ),
  Doctor(name: " Dr Name" , speciality: "Dental", picture:'assets/images/doctor3.jpg' ),
  Doctor(name: " Dr Name" , speciality: "Dental", picture:'assets/images/doctor4.jpg' ),
  Doctor(name: " Dr Name" , speciality: "Dental", picture:'assets/images/doctor1.jpg' ),
  Doctor(name: " Dr Name" , speciality: "Dental", picture:'assets/images/doctor2.jpg' ),
 


 ];
   
  @override
  Widget build(BuildContext context) {
   
    return
     MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
      body:ListView.builder(
            itemCount: Doctors.length,
            padding: const EdgeInsets.all(20.0),
            itemBuilder:  (BuildContext context, int index) {
              final doctor = Doctors[index];
              return ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                              builder: (context) =>ContactPage(), 
                               ) );
                },
                leading: CircleAvatar(backgroundImage: AssetImage(doctor.picture), radius:30,),
                title: Text(doctor.name, style: TextStyle(
                  fontSize: 20 , fontWeight: FontWeight.bold 
                ),),
               
                subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctor.speciality,
                      style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
        
                 ),
                ),
   
               ],
            ),
                
              );
            }
          ),
        
      ),
    );
  }
}