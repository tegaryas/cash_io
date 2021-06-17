import 'package:ikopi_baru/Screens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ikopi_baru/Screens/PengaturanAkun.dart';
import 'package:ikopi_baru/Screens/ProdukPage.dart';
import 'package:ikopi_baru/Screens/RiwayatPage.dart';
import 'package:ikopi_baru/style.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80,
        ),
        ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PengaturanAkun()),
            );
          },
          leading: Icon(Icons.person),
          title: Text(
            'Owner',
            style: GoogleFonts.montserrat(
              fontSize: 15,
            ),
          ),
        ),
        Divider(
          thickness: 2,
        ),
        ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          leading: Icon(Icons.home),
          title: Text(
            'Beranda',
            style: GoogleFonts.montserrat(
              fontSize: 15,
            ),
          ),
        ),
        ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RiwayatPage()),
            );
          },
          leading: Icon(Icons.request_page_rounded),
          title: Text(
            'Riwayat Transaksi',
            style: GoogleFonts.montserrat(
              fontSize: 15,
            ),
          ),
        ),
        ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProdukPage()),
            );
          },
          leading: Icon(Icons.inventory),
          title: Text(
            'Kelola Produk',
            style: GoogleFonts.montserrat(
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}
