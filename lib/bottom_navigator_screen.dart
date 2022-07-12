import 'package:flutter/material.dart';
import 'package:plant_gallery/constant/color_constant.dart';
import 'package:plant_gallery/constant/string_constant.dart';
import 'package:plant_gallery/favourite_screen.dart';
import 'package:plant_gallery/home_screen.dart';
import 'package:plant_gallery/notification_screen.dart';
import 'package:plant_gallery/profile_screen.dart';
class BottomNavigatorScreen extends StatefulWidget {
  const BottomNavigatorScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigatorScreen> createState() => _BottomNavigatorScreenState();
}

class _BottomNavigatorScreenState extends State<BottomNavigatorScreen> {
  int _selecttedIndex = 0;
  static final List _widgetoption = [
    const HomeScreen(),
    const FavouriteScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
  ];
  void _onItemTabed(int index){
    setState(() {
      _selecttedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetoption.elementAt(_selecttedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorConstant.containerColor,
        items: [
          BottomNavigationBarItem(
              icon: const Icon(Icons.home),
            label:StringConstant.home
          ),
          BottomNavigationBarItem(icon: const Icon(Icons.favorite),
            label: StringConstant.favorite
          ),
          BottomNavigationBarItem(icon: const Icon(Icons.notifications_active),
              label: StringConstant.notification
          ),
          BottomNavigationBarItem(icon: const Icon(Icons.person),
              label: StringConstant.person
          )
        ],
        currentIndex: _selecttedIndex,
        selectedItemColor: ColorConstant.iconColor,
        onTap: _onItemTabed,
        unselectedItemColor: ColorConstant.textColor,
      ),
    );
  }
}
