import 'package:flutter/material.dart';
import '../../model/pasien.dart';
import '../pasien/pasien_detail.dart';

class PasienItem extends StatelessWidget {
  final Pasien pasien;

  const PasienItem({Key? key, required this.pasien})
      : super(key: key); // Konstruktor untuk PasienItem

  @override
  Widget build(BuildContext context) {
    // Metode untuk membangun tampilan PasienItem
    return GestureDetector(
      // GestureDetector untuk menangani gesture onTap
      child: Card(
        // Card sebagai wadah untuk item pasien
        child: ListTile(
          // ListTile sebagai tampilan item dalam Card
          title: Text(
              "${pasien.namaPasien}"), // Menampilkan nama pasien dalam teks pada ListTile
        ),
      ),
      onTap: () {
        // Ketika item pasien ditekan
        Navigator.push(
            // Melakukan navigasi ke halaman PasienDetail untuk menampilkan detail pasien
            context,
            MaterialPageRoute(
                builder: (context) => PasienDetail(pasien: pasien)));
      },
    );
  }
}
