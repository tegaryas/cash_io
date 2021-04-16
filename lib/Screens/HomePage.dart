import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ikopi_baru/style.dart';
import 'package:ikopi_baru/widgets/CustomDrawer.dart';
import 'package:ikopi_baru/widgets/BottomNavigationCashio.dart';

import '../style.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String kategoriChoose;
  List listItem = [
    'Semua Produk',
    'Vans',
    'Converse',
    'Compass',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: kIconColor),
        elevation: 1,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              icon: Icon(Icons.list),
              iconSize: 30,
              color: Colors.black,
              onPressed: () {
                print('List Tapped');
              },
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: CustomDrawer(),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 15,
              offset: Offset(0, 1),
            ),
          ],
        ),
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black12,
                  width: 1,
                ),
              ),
              width: MediaQuery.of(context).size.width * 0.7,
              child: Padding(
                padding: const EdgeInsets.only(right: 8, left: 18),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    hint: Text('Semua Produk'),
                    elevation: 5,
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 50,
                    dropdownColor: Colors.white,
                    style: GoogleFonts.montserrat(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.black54,
                    ),
                    isExpanded: true,
                    value: kategoriChoose,
                    onChanged: (newValue) {
                      setState(() {
                        kategoriChoose = newValue;
                      });
                    },
                    items: listItem.map((valueItem) {
                      return DropdownMenuItem(
                        value: valueItem,
                        child: Text(valueItem),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black12,
                  width: 1,
                ),
              ),
              width: MediaQuery.of(context).size.width * 0.15,
              child: IconButton(
                icon: Icon(Icons.search),
                iconSize: 30,
                onPressed: () {},
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black12,
                  width: 1,
                ),
              ),
              width: MediaQuery.of(context).size.width * 0.15,
              child: IconButton(
                icon: Icon(Icons.qr_code_scanner),
                iconSize: 30,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationCashio(),
    );
  }
}
