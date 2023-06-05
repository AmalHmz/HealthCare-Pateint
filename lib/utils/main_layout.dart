
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health_care_p/screens/inbox_page.dart';
import 'package:health_care_p/screens/settings_page.dart';

import '../screens/home_page.dart';
import '../screens/medical_folder.dart';





class MainLayout extends StatefulWidget {
   const MainLayout({Key? key}) : super(key: key);

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  //variable declaration
  int currentPage = 0;
  final PageController _page = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _page,
        onPageChanged: ((value){
          setState(() {
            //update page index when tab pressed switch page
            currentPage = value;
          });
        }),
        children:  <Widget>[
         
          HomePage(),
          InboxPage(),
          MedicalFolderPage(),
          SettingsPage(),
        ],
      ),
       
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (page) {
          setState(() {
            currentPage = page ;
            _page.animateToPage(
            page, 
            duration: const Duration(milliseconds: 500), 
            curve: Curves.easeInOut,
            );
          });
        },
        items: const  <BottomNavigationBarItem>[
        
           BottomNavigationBarItem(
          icon:  FaIcon(FontAwesomeIcons.house),
          
          label: 'Home '
          ),
           BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.message),
          label: 'Inbox'
          ),
         
          BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.folder),
          label: 'Medical Folder'
          ),
          BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.bars),
          label: 'Settings'
          ),
             
        ],
      
      ),
    ) ;
  }
  
 
  
  
}
