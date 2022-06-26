import 'package:flutter/material.dart';

class Agenda {
  String nama_artikel;
  String deskripsi;
  String imageURL;
  String kategori;
  String isiArtikel;

  Agenda(
      // ignore: non_constant_identifier_names
      {required this.nama_artikel,
      required this.deskripsi,
      required this.isiArtikel,
      required this.imageURL,
      required this.kategori});
}

List<Agenda> agendalist = [
  Agenda(
      nama_artikel:
          'Cara Mengatasi Anak yang Suka Menangis untuk Mendapatkan Sesuatu',
      deskripsi: 'Penasaran? Simak Disini!',
      imageURL: 'assets/timeline/artikel1.jpg',
      isiArtikel:
          'Saya yakin, Anda pernah mengalami hal ini. Situasi dimana anak Anda sering menggunakan tangisannya sebagai SENJATA untuk mendapatkan sesuatu yang diinginkan. Padahal, menurut Anda apa yang dia inginkan itu bukanlah suatu hal yang baik untuknya.',
      kategori: 'Self parenting'),
  Agenda(
      nama_artikel: 'Pasar Malam',
      deskripsi: 'Pasar malam bukan hiburan malam',
      imageURL: 'assets/images/bannerbgendakegiatan.jpeg',
      isiArtikel: '-',
      kategori: 'MBTI'),
  Agenda(
      nama_artikel: 'Pasar Induk',
      deskripsi: 'Pasar Induk tidak memiliki kewajiban menafkahi anak pasar',
      imageURL: 'assets/images/bannerbgendakegiatan.jpeg',
      isiArtikel: '-',
      kategori: 'MBTI'),
  Agenda(
      nama_artikel: 'Curug Pelangi',
      deskripsi: 'Curug pelangi bukan buat orang homo',
      imageURL: 'assets/images/bannerbgendakegiatan.jpeg',
      isiArtikel: '-',
      kategori: 'Self parenting'),
  Agenda(
      nama_artikel: 'Curug Maribaya',
      deskripsi: 'Saung ujo adalah tempat yang bukan berwarna hijau',
      imageURL: 'assets/images/bannerbgendakegiatan.jpeg',
      isiArtikel: '-',
      kategori: 'Self parenting'),
  Agenda(
      nama_artikel: 'Saung Ujo',
      deskripsi: 'Saung ujo adalah tempat yang bukan berwarna hijau',
      imageURL: 'assets/images/bannerbgendakegiatan.jpeg',
      isiArtikel: '-',
      kategori: 'Self parenting'),
];
