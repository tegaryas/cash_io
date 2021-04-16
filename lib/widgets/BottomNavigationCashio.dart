import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavigationCashio extends StatefulWidget {
  @override
  _BottomNavigationCashioState createState() => _BottomNavigationCashioState();
}

class _BottomNavigationCashioState extends State<BottomNavigationCashio> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  var bottomTextStyle = GoogleFonts.montserrat(
    fontSize: 12,
    fontWeight: FontWeight.w300,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 15,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? Icon(Icons.home)
                : Icon(Icons.home_outlined),
            title: Text('Home', style: bottomTextStyle),
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? Icon(Icons.favorite)
                : Icon(Icons.favorite_border_outlined),
            title: Text('Favorite', style: bottomTextStyle),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black26,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedFontSize: 12,
        showSelectedLabels: true,
        elevation: 0,
      ),
    );
  }
}
