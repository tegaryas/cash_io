import 'dart:ffi';

import 'package:google_fonts/google_fonts.dart';
import 'package:ikopi_baru/Model/KategoriModel.dart';
import 'package:ikopi_baru/Model/ProdukModel.dart';
import 'package:ikopi_baru/widgets/CustomDrawer.dart';
import 'package:flutter/material.dart';

import '../style.dart';

class ProdukPage extends StatefulWidget {
  ProdukPage({Key key}) : super(key: key);

  @override
  _ProdukPageState createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_handleTabIndex);
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabIndex);
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabIndex() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Kelola Produk',
            style: GoogleFonts.montserrat(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: Colors.black54,
            ),
          ),
          iconTheme: IconThemeData(color: kIconColor),
          elevation: 1,
          backgroundColor: Colors.white,
          bottom: TabBar(
            controller: _tabController,
            labelColor: Colors.black54,
            labelStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w900,
            ),
            indicatorColor: Color(0xff00B1F4),
            tabs: <Widget>[
              Tab(
                text: 'Produk',
              ),
              Tab(text: 'Kategori'),
            ],
          ),
        ),
        drawer: Drawer(
          child: CustomDrawer(),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Container(
                      child: Container(
                        width: double.infinity,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.black26,
                              ),
                              hintStyle: GoogleFonts.montserrat(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.black26,
                              ),
                              hintText: 'Cari Produk'),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Container(
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: produk.length,
                        itemBuilder: (BuildContext c, int index) {
                          return Container(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            produk[index].namaProduk,
                                            style: GoogleFonts.montserrat(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            produk[index].hargaProduk,
                                            style: GoogleFonts.montserrat(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black45,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Divider(
                                  thickness: 1,
                                )
                              ],
                            ),
                          );
                          ;
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: Container(
                    child: ListView.builder(
                      itemCount: kategoriProduk.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 10),
                              child: Container(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.menu,
                                              size: 30,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              kategoriProduk[index].kategori,
                                              style: GoogleFonts.montserrat(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Icon(Icons.edit),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1,
                            )
                          ],
                        );
                        // return Card(
                        //   child: ListTile(
                        //     leading: Icon(Icons.menu),
                        //     title: Text(kategoriProduk[index].kategori),
                        //     trailing: GestureDetector(
                        //       onTap: () {
                        //         print('Edit Kategori');
                        //       },
                        //       child: Icon(Icons.edit),
                        //     ),
                        //   ),
                        // );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: _bottomButtons(_tabController.index),
      ),
    );
  }
}
//   Container buildListProduk() {
//     return Container(
//       child: Column(
//         children: [
//           SizedBox(
//             height: 10,
//           ),
//           Container(
//             width: double.infinity,
//             decoration: BoxDecoration(
//               color: Colors.white,
//             ),
//             child: Row(
//               children: [
//                 Container(
//                   height: 50,
//                   width: 50,
//                   decoration: BoxDecoration(
//                     color: Colors.blue,
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 15,
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       produk[index].namaProduk,
//                       style: GoogleFonts.montserrat(
//                         fontSize: 15,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.black,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 8,
//                     ),
//                     Text(
//                       'Rp. 799.000',
//                       style: GoogleFonts.montserrat(
//                         fontSize: 13,
//                         fontWeight: FontWeight.w500,
//                         color: Colors.black45,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Divider(
//             thickness: 1,
//           )
//         ],
//       ),
//     );
//   }
// }

Widget _bottomButtons(int index) {
  switch (index) {
    case 0: // dashboard
      return FloatingActionButton(
        onPressed: null,
        backgroundColor: Color(0xff00B1F4),
        child: Icon(
          Icons.add,
          size: 20.0,
        ),
      );
      break;
    case 1: // dashboard
      return FloatingActionButton(
        onPressed: null,
        backgroundColor: Color(0xff00B1F4),
        child: Icon(
          Icons.add,
          size: 20.0,
        ),
      );
      break;
  }
}
