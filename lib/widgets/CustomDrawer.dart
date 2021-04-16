import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ikopi_baru/style.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Drawer(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      height: 110,
                      decoration: BoxDecoration(color: kPrimaryColor),
                    ),
                    Container(
                      height: 110,
                      decoration: BoxDecoration(color: Colors.white),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 28.0,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'HELLO USER',
                              style: GoogleFonts.montserrat(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Masuk / Daftar',
                              style: GoogleFonts.montserrat(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: kPrimaryColor,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.home,
                      size: 24,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Beranda',
                      style: GoogleFonts.montserrat(fontSize: 13),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.replay_outlined,
                      size: 24,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Riwayat Transaksi',
                      style: GoogleFonts.montserrat(fontSize: 13),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.account_box_outlined,
                      size: 24,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Laporan',
                      style: GoogleFonts.montserrat(fontSize: 13),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.app_settings_alt,
                      size: 24,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Kelola Produk',
                      style: GoogleFonts.montserrat(fontSize: 13),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
