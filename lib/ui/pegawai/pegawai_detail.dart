import 'package:flutter/material.dart';
import 'pegawai_update_form.dart';
import '../../model/pegawai.dart';
import 'pegawai_form.dart';

class PegawaiDetail extends StatefulWidget {
  final Pegawai pegawai;

  const PegawaiDetail({Key? key, required this.pegawai})
      : super(key: key); // Konstruktor untuk PegawaiDetail

  @override
  State<PegawaiDetail> createState() =>
      _PegawaiDetailState(); // Membuat instance dari _PegawaiDetailState
}

class _PegawaiDetailState extends State<PegawaiDetail> {
  @override
  Widget build(BuildContext context) {
    // Metode untuk membangun tampilan PegawaiDetail
    return Scaffold(
      // Scaffold sebagai layout utama
      appBar: AppBar(
        // AppBar
        title: Text("Detail Pegawai"), // Judul AppBar
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
      body: Column(
        // Column sebagai wadah untuk menampilkan widget secara vertikal
        children: [
          SizedBox(height: 20), // Spasi vertikal
          Text(
            // Widget untuk menampilkan nama pegawai
            "Nama Pegawai : ${widget.pegawai.namaPegawai}", // Teks berisi nama pegawai
            style: TextStyle(fontSize: 20), // Style teks
          ),
          SizedBox(height: 20), // Spasi vertikal
          Row(
            // Row untuk menampilkan tombol ubah dan hapus secara berdampingan
            mainAxisAlignment: MainAxisAlignment
                .spaceEvenly, // Mengatur posisi tombol secara merata
            children: [
              _tombolUbah(), // Memanggil metode untuk menampilkan tombol ubah
              _tombolHapus(), // Memanggil metode untuk menampilkan tombol hapus
            ],
          )
        ],
      ),
    );
  }

  _tombolUbah() {
    // Metode untuk menampilkan tombol ubah
    return ElevatedButton(
        // ElevatedButton sebagai tombol dengan latar belakang yang ditinggikan
        onPressed: () {
          // Ketika tombol ditekan
          Navigator.push(
              // Melakukan navigasi ke halaman PegawaiUpdateForm dengan membawa data pegawai
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      PegawaiUpdateForm(pegawai: widget.pegawai)));
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors
                .green), // Mengatur warna latar belakang tombol menjadi hijau
        child: const Text("Ubah")); // Teks pada tombol ubah
  }

  _tombolHapus() {
    // Metode untuk menampilkan tombol hapus
    return ElevatedButton(
        // ElevatedButton sebagai tombol dengan latar belakang yang ditinggikan
        onPressed: () {}, // Menetapkan aksi kosong saat tombol hapus ditekan
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors
                .red), // Mengatur warna latar belakang tombol menjadi merah
        child: const Text("Hapus")); // Teks pada tombol hapus
  }
}
