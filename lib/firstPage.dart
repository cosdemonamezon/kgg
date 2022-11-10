import 'package:flutter/material.dart';
import 'package:kgg/Screen/Edit/editPage.dart';
import 'package:kgg/Screen/Home/homePage.dart';
import 'package:kgg/Screen/Scan/scanPage.dart';
import 'package:kgg/Screen/Setting/settingPage.dart';

class FirstPage extends StatefulWidget {
  FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int selectedIndex = 0;
  final PageController controller = PageController();
  final List<Widget> screen = [];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomePage();

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
      if (selectedIndex == 0) {
        currentScreen = HomePage();
      } else if (selectedIndex == 1) {
        currentScreen = ScanPage();
      } else if (selectedIndex == 2) {
        currentScreen = EditPage();
      } else if (selectedIndex == 3) {
        currentScreen = SettingPage();
      } else {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageStorage(
          bucket: bucket,
          child: currentScreen,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.qr_code),label: 'scan'),
            BottomNavigationBarItem(icon: Icon(Icons.edit_attributes),label: 'edit'),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'settings'),
          ],
          selectedFontSize: 12,
          unselectedFontSize: 12,
          currentIndex: selectedIndex,
          unselectedItemColor: Color(0xE70629B4),
          showUnselectedLabels: true,
          selectedItemColor: Colors.blueAccent,
          onTap: onItemTapped,
      ),
    );
  }
}
