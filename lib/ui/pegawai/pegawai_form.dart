import 'package:flutter/material.dart';
import '../../model/pegawai.dart';
import 'pegawai_detail.dart';

class PegawaiForm extends StatefulWidget {
  const PegawaiForm({Key? key})
      : super(key: key); // Konstruktor untuk PegawaiForm

  @override
  _PegawaiFormState createState() =>
      _PegawaiFormState(); // Membuat instance dari _PegawaiFormState
}

class _PegawaiFormState extends State<PegawaiForm> {
  final _formKey =
      GlobalKey<FormState>(); // GlobalKey untuk mengelola state dari form
  final _namaPegawaiCtrl =
      TextEditingController(); // TextEditingController untuk mengelola input dari field nama pegawai

  @override
  Widget build(BuildContext context) {
    // Metode untuk membangun tampilan PegawaiForm
    return Scaffold(
      // Scaffold sebagai layout utama
      appBar: AppBar(
          title: const Text(
              "Tambah Pegawai")), // AppBar dengan judul "Tambah Pegawai"
      body: SingleChildScrollView(
        // SingleChildScrollView untuk membuat tampilan yang dapat digulir
        child: Form(
          // Form sebagai wadah untuk field input
          key: _formKey, // Menggunakan GlobalKey untuk form
          child: Column(
            // Column sebagai wadah untuk menampilkan widget secara vertikal
            children: [
              _fieldNamaPegawai(), // Memanggil metode untuk menampilkan field input nama pegawai
              SizedBox(height: 20), // Spasi vertikal
              _tombolSimpan() // Memanggil metode untuk menampilkan tombol simpan
            ],
          ),
        ),
      ),
    );
  }

  Widget _fieldNamaPegawai() {
    // Metode untuk menampilkan field input nama pegawai
    return TextField(
      // TextField untuk input teks
      decoration: const InputDecoration(
          labelText: "Nama Pegawai"), // Dekorasi field input nama pegawai
      controller:
          _namaPegawaiCtrl, // Menggunakan TextEditingController untuk mengelola input
    );
  }

  Widget _tombolSimpan() {
    // Metode untuk menampilkan tombol simpan
    return ElevatedButton(
      // ElevatedButton sebagai tombol dengan latar belakang yang ditinggikan
      onPressed: () {
        // Ketika tombol ditekan
        Pegawai pegawai = Pegawai(
            namaPegawai: _namaPegawaiCtrl
                .text); // Membuat objek Pegawai dengan data dari input nama pegawai
        Navigator.pushReplacement(
          // Melakukan navigasi ke halaman PegawaiDetail dengan membawa data pegawai
          context,
          MaterialPageRoute(
            builder: (context) => PegawaiDetail(
                pegawai: pegawai), // Membuat instance dari PegawaiDetail
          ),
        );
      },
      child: const Text("Simpan"), // Teks pada tombol simpan
    );
  }
}
