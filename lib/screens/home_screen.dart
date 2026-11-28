
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiatchon_mobprog/constants.dart';
import 'package:quiatchon_mobprog/screens/newsfeed_screen.dart';
import 'package:quiatchon_mobprog/screens/notification_screen.dart';
import 'package:quiatchon_mobprog/widgets/custom_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: fbTextColorWhite,
        elevation: 2,
        title: CustomText(
          text: _selectedIndex == 0 ? 'Sheeree Anne' : 'Notifications',
          fontSize: ScreenUtil().setSp(25),
          color: fbPrimary,
          fontFamily: 'Klavika',
          fontWeight: FontWeight.w700,
        ),
      ),

      body: PageView(
        controller: _pageController,
        children: const [
          NewsfeedScreen(),
          NotificationScreen(),
        ],
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
      ),

      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        onTap: _onTappedBar,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: fbPrimary,
        currentIndex: _selectedIndex,
      ),
    );
  }

  void _onTappedBar(int value) {
    setState(() {
      _selectedIndex = value;
    });

    _pageController.jumpToPage(value);
  }
}
