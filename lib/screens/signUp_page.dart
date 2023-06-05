import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_care_p/screens/auth_page.dart';
import 'package:health_care_p/utils/config.dart';
import 'package:health_care_p/utils/main_layout.dart';



class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key});
  @override
  State<SignUpPage> createState() => _SignUpPageState();

}

class _SignUpPageState extends State<SignUpPage> {
  bool passToggle = true ;
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _dateController = TextEditingController();
  final _passController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 30),
              Padding(padding: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Full Name",
                  hintText: "Enter your full name",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(CupertinoIcons.person),
                 prefixIconColor: Config.primaryColor,
                ),
              ),
              ),
               Padding(padding: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
              child: TextField(
                 controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'Email Address',
                 labelText: 'Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(CupertinoIcons.mail),
                   prefixIconColor: Config.primaryColor,
                ),
              ),
              ),
               Padding(padding: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
              child: TextField(
                 controller: _dateController,
                decoration: InputDecoration(
                  hintText: 'DD/MM/YY',
                  labelText: 'Birthday',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(CupertinoIcons.calendar),
                   prefixIconColor: Config.primaryColor,
                ),
              ),
              ),
               Padding(padding: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  hintText:"Phone number",
                  labelText: "Phone number ",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(CupertinoIcons.phone),
                   prefixIconColor: Config.primaryColor,
                ),
              ),
              ),
              
              Padding(padding: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
              
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Location",
                  hintText: "Add your location",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(CupertinoIcons.location),
                   prefixIconColor: Config.primaryColor,
                ),
              ),
              ),
               Padding(padding: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
              child: TextField(
                obscureText: passToggle ? true: false,
                 controller: _passController,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText:"Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(CupertinoIcons.lock),
                   prefixIconColor: Config.primaryColor,
                  suffixIcon: InkWell(onTap: () {
                    if(passToggle == true){
                      passToggle = false;
                    }else{
                      passToggle = true;
                    }
                    setState(() {});
                  },
                  child: passToggle 
                  ? Icon(CupertinoIcons.eye_slash_fill)
                  : Icon(CupertinoIcons.eye_fill),
                  ), 
                 
                ),
              ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  child: Material(
                    color: Config.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                         Navigator.push(
                         context,
                         MaterialPageRoute(
                         builder: (context) => MainLayout()
                         
                          ) );
                      },
                      child: Padding(
                        padding:
                        EdgeInsets.symmetric(vertical: 15,horizontal: 40),
                        child: Center(
                          child:  Text(
                            "Create Account",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        ),
                        ),
                    ),
                  ),
                ),

              ),
            
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " Already have an account ?",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                  TextButton(
                   onPressed:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:(context) => AuthPage(), 
                        )
                      );
                   } ,
                   child: Text(
                    "Log In",
                   ),
                   ),
                ],
              )
             
            ],
            ),
        ),
      ),
    );
  }
}