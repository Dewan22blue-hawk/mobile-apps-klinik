import 'package:flutter/material.dart';
import 'package:klinik_mobile_apps/model/poli.dart';
import 'package:klinik_mobile_apps/ui/poli/poli_page.dart';
import 'package:klinik_mobile_apps/widget/sidebar.dart';

import '../../model/pegawai.dart';
import '../../model/pasien.dart';

import 'pegawai_item.dart';
import '../pasien/pasien_item.dart';
import '../poli/poli_item.dart';
import 'pegawai_form.dart';

class PegawaiPage extends StatefulWidget {
  const PegawaiPage({Key? key})
      : super(key: key); // Konstruktor untuk PegawaiPage

  @override
  State<PegawaiPage> createState() =>
      _PegawaiPageState(); // Membuat instance dari _PegawaiPageState
}

class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    // Metode untuk membangun tampilan PegawaiPage
    return Scaffold(
      // Scaffold sebagai layout utama
      drawer: Sidebar(), // Menambahkan Sidebar ke dalam drawer
      appBar: AppBar(
        // AppBar
        title: const Text("Data RS"), // Judul AppBar
        actions: [
          GestureDetector(
            // GestureDetector untuk menangani interaksi tap
            child: Container(
              // Container sebagai wrapper untuk Icon
              child: const Icon(Icons.add), // Icon "Add"
              padding: EdgeInsets.all(
                  20), // Padding untuk menambahkan ruang di sekitar Icon
            ),
            onTap: () {
              // Ketika onTap terjadi
              Navigator.push(
                  context, // Melakukan navigasi ke halaman PegawaiForm
                  MaterialPageRoute(builder: (context) => PegawaiForm()));
            },
          )
        ],
      ),
      body: ListView(
        // ListView untuk membuat tampilan yang dapat digulir
        children: [
          PegawaiItem(
              pegawai:
                  Pegawai(namaPegawai: "Pegawai")), // Menampilkan item Pegawai
          PasienItem(
              pasien: Pasien(namaPasien: "Pasien")), // Menampilkan item Pasien
          // PoliItem(poli: Poli(namaPoli: "Poli")), // Komentar: Sementara dihapus karena belum diimplementasikan

          GestureDetector(
            // GestureDetector untuk menangani interaksi tap
            child: Card(
              // Card sebagai wrapper untuk ListTile
              child:
                  ListTile(title: Text("Poli")), // ListTile dengan teks "Poli"
            ),
            onTap: () {
              // Ketika onTap terjadi
              Navigator.push(
                  context, // Melakukan navigasi ke halaman PoliPage
                  MaterialPageRoute(builder: (context) => PoliPage()));
            },
          ),
        ],
      ),
    );
  }
}
