import 'package:flutter/material.dart';

class Kategori {
  final String kategori;

  Kategori({
    @required this.kategori,
  });
}

List<Kategori> kategoriProduk = [
  Kategori(kategori: 'Sneakers'),
  Kategori(kategori: 'Apparels'),
];
