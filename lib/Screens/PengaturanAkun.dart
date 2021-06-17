import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ikopi_baru/widgets/CustomDrawer.dart';

import '../style.dart';

class PengaturanAkun extends StatefulWidget {
  PengaturanAkun({Key key}) : super(key: key);

  @override
  _PengaturanAkunState createState() => _PengaturanAkunState();
}

class _PengaturanAkunState extends State<PengaturanAkun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pengaturan Akun',
          style: GoogleFonts.montserrat(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: Colors.black54,
          ),
        ),
        iconTheme: IconThemeData(color: kIconColor),
        elevation: 1,
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: CustomDrawer(),
      ),
    );
  }
}
