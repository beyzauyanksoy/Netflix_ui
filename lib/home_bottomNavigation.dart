import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_ui/providerItem.dart';
import 'package:provider/provider.dart';

class HomeBottomNavigation extends StatefulWidget {
  const HomeBottomNavigation({super.key});

  @override
  State<HomeBottomNavigation> createState() => _HomeBottomNavigationState();
}

class _HomeBottomNavigationState extends State<HomeBottomNavigation> {
  // int _selectedIndex=0;
  // void _navigateBottomBar(int index){
  //     setState(() {
  //       _selectedIndex=index;
  //     });
  // }
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, ProvidertItem item, Widget? child) {
        return BottomNavigationBar(
          currentIndex: item.selectedIndex,
          onTap: item.navigateBottomBar,
          fixedColor: Color(0xff1B1919),
          items: [
            BottomNavigationBarItem(
                icon: Image.asset('assets/home.png'),
                label: '',
                backgroundColor: Color(0xff1B1919)),
            BottomNavigationBarItem(
                icon: Image.asset('assets/download.png'), label: ''),
            BottomNavigationBarItem(
                icon: Image.asset('assets/search.png'), label: ''),
            BottomNavigationBarItem(
                icon: Image.asset('assets/bell.png'), label: ''),
            BottomNavigationBarItem(
                icon: Image.asset('assets/menu.png'), label: '')
          ],
        );
      },
    );
  }
}
