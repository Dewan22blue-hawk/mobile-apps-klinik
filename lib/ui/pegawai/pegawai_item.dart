import 'package:flutter/material.dart';
import '../../model/pegawai.dart';
import 'pegawai_detail.dart';

class PegawaiItem extends StatelessWidget {
  final Pegawai pegawai;

  const PegawaiItem({Key? key, required this.pegawai})
      : super(key: key); // Konstruktor untuk PegawaiItem

  @override
  Widget build(BuildContext context) {
    // Metode untuk membangun tampilan PegawaiItem
    return GestureDetector(
      // GestureDetector untuk menangani interaksi tap
      child: Card(
        // Card sebagai wrapper untuk ListTile
        child: ListTile(
          title: Text(
              "${pegawai.namaPegawai}"), // Menampilkan nama pegawai dalam ListTile
        ),
      ),
      onTap: () {
        // Ketika onTap terjadi
        Navigator.push(
          // Melakukan navigasi ke halaman PegawaiDetail
          context,
          MaterialPageRoute(
            builder: (context) => PegawaiDetail(
                pegawai: pegawai), // Membuat instance dari PegawaiDetail
          ),
        );
      },
    );
  }
}
