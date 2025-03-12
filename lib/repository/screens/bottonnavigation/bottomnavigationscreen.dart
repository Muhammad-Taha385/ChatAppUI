import 'package:chatuiapp/domain/constants/appcolors.dart';
import 'package:chatuiapp/repository/screens/Chats/chatsscreen.dart';
import 'package:chatuiapp/repository/screens/Contacts/contactscreen.dart';
import 'package:chatuiapp/repository/screens/moreoptionscreen/moreoptionscreen.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentindex = 1 ;
  List<Widget>pages=[
    ContactScreen(),
    ChatsScreen(),
    MoreOptionScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.person_2_sharp),label: "Contacts"),
        BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline_sharp),label: "Chats"),
        BottomNavigationBarItem(icon: Icon(Icons.more_horiz_sharp),label: "More"),

      ],
      currentIndex: currentindex,
      onTap:(value){ setState(() {
        currentindex=value;
      });
      },
      showSelectedLabels: true,
      showUnselectedLabels: true,
      // unselectedIconTheme: IconThemeData(color:Theme.of(context).brightness==Brightness.dark?Appcolors.icondarkmode:Appcolors.iconlightmode),
      backgroundColor:Theme.of(context).brightness==Brightness.dark?Appcolors.bottomdark:Appcolors.bottomlight, 
      selectedIconTheme: IconThemeData(color: Theme.of(context).brightness==Brightness.dark?Appcolors.icondarkmode:Appcolors.iconlightmode),
      ),
      
      body: IndexedStack(
        children: pages,
        index: currentindex,
        
      ),
    );
  }
}