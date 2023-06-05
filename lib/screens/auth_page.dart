import 'package:flutter/material.dart';
import 'package:health_care_p/screens/signUp_page.dart';
import '../components/login_form.dart';
import '../components/social_button.dart';
import '../utils/config.dart';
import '../utils/text.dart';

class AuthPage extends StatefulWidget {
   const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                AppText.enText['']??"",
                style: const TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
             
              Config.spaceSmall,
              Text(
                 AppText.enText['signIn_text']??"",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
               ),
               Config.spaceSmall,
                const LoginForm(),
               Config.spaceSmall,
               Center(
                child: TextButton(
                  onPressed:  () {},
                  child: Text(
                     AppText.enText['forgot_password']??"",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  ),
                ),
               ),
               ),
               const Spacer (),
               Center(
                child: Text(
                AppText.enText['social_login']??"",
                style:  const  TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(255, 32, 30, 30),
                ),
                ),
                      ),
            
             Config.spaceSmall,
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                //Here we will build a social button
                
                SocialButton(social: 'facebook'),
                SocialButton(social: 'google'),
              ],
             ) ,
            Config.spaceSmall,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                 Text(
                 AppText.enText['signUp_text']??"",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(255, 32, 30, 30),
                ),
                ),
                TextButton(
                  onPressed: (){
                    Navigator.push(
                     context,
                    MaterialPageRoute(
                      builder: (context) => SignUpPage(),
                      ),
                    );
                  },
                  child:  const Text(
                  'Sign Up',
                  style:  TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Config.primaryColor,
                ),
                ) ),

              ],
            ) 
            ],
          ),
          ),
      ) 
   
    );
  }
}