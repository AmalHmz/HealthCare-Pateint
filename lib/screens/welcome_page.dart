import 'package:flutter/material.dart';
import 'package:health_care_p/screens/signUp_page.dart';

import '../utils/config.dart';
import '../utils/main_layout.dart';
import 'auth_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(10),
        child: Column(
          children:    [
            const SizedBox(height: 15),
            Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed:() {
                Navigator.push(context, MaterialPageRoute(
                 builder: (context) => const MainLayout(),
                 ) );
              },
              child: const Text('SKIP',
              style: TextStyle(
                color: Config.primaryColor,
                fontSize: 20,
              ),
              ),
            ),
            ),
             const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset('assets/images/image.jpg',
              height: 300,
              width:300,
              ),
              ),
              const SizedBox(height: 10),
              const Text("Home Health Care",
              style: TextStyle(
                color: Config.primaryColor,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                wordSpacing: 2,
              ),
              ),
               const SizedBox(height: 10),
              const Text("Your Health Is Our Priority",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                
              ),
              ),
               const SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Material(
                    color: Config.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                     onTap: (){
                           Navigator.push(context, MaterialPageRoute(
                           builder: (context) => AuthPage(), 
                               ) );
                      },
                      child:const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 15,
                           horizontal: 40),
                           child:Text(
                            "Log In ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                           ),
                    ),
                  ),
                    Material(
                    color: Config.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                     onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                            builder: (context) =>SignUpPage(),
                             ) );
                      },
                      
                      child: const Padding(
                        
                        padding: EdgeInsets.symmetric(
                          vertical: 15,
                           horizontal: 40),
                           child:Text(
                            "Sign Up ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            
                           ),
                    ),
                  ),
                ],
              )
          ],
        ),

      ),
    );
  }
}