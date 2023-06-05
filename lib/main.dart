import 'package:flutter/material.dart';
import 'package:health_care_p/screens/welcome_page.dart';
import 'package:health_care_p/utils/config.dart';
import 'package:health_care_p/utils/main_layout.dart';

void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
const MyApp ({super.key});
static final navigatorKey = GlobalKey<NavigatorState>();

@override
Widget build(BuildContext context) {
  return MaterialApp(
   navigatorKey: navigatorKey ,
   title: 'HealthCare App',
   debugShowCheckedModeBanner: false,
   theme: ThemeData (
    inputDecorationTheme: const InputDecorationTheme(
      focusColor: Config.primaryColor,
      border: Config.OutlinedBorder,
      focusedBorder: Config.focusBorder,
      errorBorder: Config.errorBorder,
      enabledBorder: Config.OutlinedBorder,
      floatingLabelStyle: TextStyle(color: Config.primaryColor),
      prefixIconColor: Colors.black38,
    ),
    
    scaffoldBackgroundColor: Colors.white,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Config.primaryColor,
      
      selectedItemColor: Colors.white,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      unselectedItemColor: Colors.grey.shade700,
      elevation: 10,
      type: BottomNavigationBarType.fixed,
    ),
   
   ),
   
    
   initialRoute: '/',
   routes: {
    '/':(context) => const WelcomePage(),
    'main':(context) =>  const MainLayout(),
   },
   
  );   

}
}




