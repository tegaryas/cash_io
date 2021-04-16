import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ikopi_baru/style.dart';
import 'package:ikopi_baru/widgets/CustomDrawer.dart';

import '../style.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Image.asset(
            'assets/images/background.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            iconTheme: IconThemeData(color: kIconColor),
            elevation: 0,
            backgroundColor: Colors.transparent,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Row(
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      child: GestureDetector(
                          onTap: () {},
                          child: SvgPicture.asset('assets/svg/coupon.svg')),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: kIconColor,
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.search),
                          iconSize: 23,
                          color: Colors.white,
                          onPressed: () {},
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          drawer: Drawer(
            child: CustomDrawer(),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Selamat Datang,\nUser!',
                  style: GoogleFonts.montserrat(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: kIconColor,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Berbagai rasa iKopi\nsiap menemani harimu!',
                  style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: kIconColor,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 90.0,
                  width: 210,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white70),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 5),
                        height: 60,
                        child: Icon(
                          Icons.location_pin,
                          color: kIconColor,
                        ),
                      ),
                      IntrinsicWidth(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 150,
                              height: 50,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Trans Mart Balikpapan Utara',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: kIconColor),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.black45,
                              height: 2,
                              endIndent: 45,
                            ),
                            Container(
                              height: 24,
                              width: 150,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Container(
                                      child: Text('2115,4 km',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 8,
                                              fontWeight: FontWeight.bold,
                                              color: kIconColor)),
                                    ),
                                  ),
                                  Container(
                                    child: Text('dari lokasi mu',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 8,
                                            fontWeight: FontWeight.w400,
                                            color: kIconColor)),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: InkWell(
            onTap: () {
              print('Bottom Bar Tapped');
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 28),
              color: kPrimaryColor,
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'PESAN SEKARANG',
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Temukan Secangkir Kebahagiaan',
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_up,
                        color: Colors.white,
                        size: 22,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
